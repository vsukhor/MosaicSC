"""
General purpose functions used in the analysis of simulation log files.
"""

import sys

from config import Config
from misc import skip_lines
from records import Records


def import_log_files(path, runs):

    pat = f'{runs[0]} : {runs[1]}'

    def fn(k):
        return path / f'log_{k}.txt'

    def append_static_recs(rs):
        for v in rs.runs:
            Records.runs_read_in.append(v)

    cf, r = _read_log(fn(runs[0]))
    recs = [r]
    append_static_recs(r)
    for i in range(runs[0]+1, runs[1]+1):
        c, r = _read_log(fn(i))
        if c == cf:
            recs.append(r)
            append_static_recs(r)
        else:
            print(f'Error: Runs between {runs[0]} and {runs[1]} do use '
                  f'differing configurations at run {i}. \nExiting!')
            sys.exit(-1)
    ravg = Records.average(recs)

    return ravg, pat


def _read_log(fname):
    """
    Read a log file 'fname' to produce instance of Config and Records.
    """

    print(f'Reading data from: {fname}')

    cf = Config()
    rs = Records()

    with open(fname, 'r') as f:
        cf.readin(f)
        skip_lines(3, f)
        rs.runs = [int(f.readline().split()[2])]
        rs.seed = [int(f.readline().split()[2])]
        rs.lattice_dims = [int(x) for x in f.readline().split()[2:]]
        skip_lines(4, f)
        while True:
            r = Records.read(f)
            if r == '' or r[0] == '\n':
                break
            rs.add(r)

    print(f'read in: {len(rs.inds)} records')

    return cf, rs
