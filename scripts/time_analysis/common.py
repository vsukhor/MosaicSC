""" General purpose functions used in the analysis of simulation log files.
"""


# ======================================================================================================================
def import_log_files(path, runs):

    from records import Records

    pat = str(runs[0]) + ' : ' + str(runs[1])

    fn = lambda k: path + 'log_' + str(k) + '.txt'

    cf, r = _read_log(fn(runs[0]))
    recs = [r]
    Records.runs_read_in.append(r.runs)
    for i in range(runs[0]+1, runs[1]+1):
        c, r = _read_log(fn(i))
        if c == cf:
            recs.append(r)
            for r in r.runs:
                Records.runs_read_in.append(r)
        else:
            print(f'Runs within run0={runs[0]} and run1={runs[1]} do use different configurations at {i}')
            sys.exit([-1])
    ravg = Records.average(recs)

    return ravg, pat


# ======================================================================================================================
def _read_log(fname):

    """ Read a log file 'fname' to produce instance of Config and Records.
    """

    from config import Config
    from records import Records

    print('Reading data from: ' + fname)

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
            if r[0] == '\n': break
            rs.add(r)

    print(f'read in: {len(rs.inds)} records')

    return cf, rs


# ======================================================================================================================
def skip_lines(n, f):
    """ Skip 'n' lines while reading from text file 'f'.
    """

    for _ in range(n): f.readline()


# ======================================================================================================================
def fit_exp(gd, data_x, data_y, p0=None):

    """ Fit an exponent (growing if gd=='grw' or decaying otherwise)
        to 'data_y' at 'data_x'using 'p0' as initial guess.
    """

    import numpy as np
    from scipy.optimize import curve_fit

    if gd == 'grw':
        def func(x, a, b, c):
            return a * (1. - np.exp(-x / b)) + c
        eq = '$y(x) = a e^{-x/b} + c$'
    else:
        def func(x, a, b, c):
            return a * np.exp(-x / b) + c
        eq = '$y(x) = a(1 - e^{-x/b}) + c$'

    p, cov = curve_fit(f=func, xdata=data_x, ydata=data_y, p0=p0)

    return func(np.array(data_x), *p), p, eq


# ======================================================================================================================
def plot_timedata(name, data_x, data_y, pars=None, fit=None,
                  figsize=None, colors=None, n=1, labels=None):

    """ Plot data 'data_y' and eventually 'fit', both  specified at 'data_x'.
    """

    import matplotlib.pyplot as plt
    from records import Records

    if colors is None:
        colors = ['b.']

    fig = plt.figure(figsize=figsize)
    ax = fig.add_subplot(111)

    x = [int(i/1000) for i in data_x]
    if n == 1:
        ax.plot(x, data_y, colors[0], lw=0.5)
        if fit is not None:
            ax.plot(x, fit, colors[1], lw=1.)
            parstr = f'a = {pars[0]:.2f}\nb = {pars[1]:.2f}\nc = {pars[2]:.2f}'
            ax.text(0.8*ax.get_xlim()[1],
                    ax.get_ylim()[0] + 0.8*(ax.get_ylim()[1] - ax.get_ylim()[0]),
            parstr, fontsize=10)
    else:
        for j in range(n):
            ax.plot(x, [k[j] for k in data_y], colors[j], label=labels[j])
        ax.legend()
        ax.set_xlim([0., x[-1]*1.2])    # to accommodate the legend

    ax.set_xlabel(Records.time_label+ 'x1000')
    plt.grid(True)
    plt.title(name)
    plt.show()


