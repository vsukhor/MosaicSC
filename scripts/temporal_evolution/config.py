"""
Configutation settings.
"""

from misc import skip_lines


class Config:
    """
    Encapsulates configuration parameters.
    """

    def __init__(self):

        self.working_dir = None
        self.runs = None
        self.numiter = None
        self.logfreq = None
        self.savefreq = None
        self.num_c = None
        self.dilution = None
        self.rates = None
        self.syn = None
        self.beta = None

    def readin(self, f):
        """
        Read the configuration data from the log file 'f'
        """

        def line(f):
            return f.readline().split()

        skip_lines(2, f)            # Parameters, workingDir_in
        self.working_dir = line(f)[1]
        self.runs = [int(line(f)[2]),
                     int(line(f)[2])]
        skip_lines(2, f)            # nthreads, resume
        self.numiter = int(line(f)[2])
        self.logfreq = int(line(f)[2])
        skip_lines(2, f)            # detailedfreq, finaldetailed, savefreq
        self.savefreq = int(line(f)[2])
        self.num_c = [int(x) for x in line(f)[2:]]
        self.dilution = float(line(f)[2])
        skip_lines(1, f)            # inum
        self.rates = [float(x) for x in line(f)[2:]]
        self.syn = float(line(f)[2])
        self.beta = float(line(f)[2])

    def __eq__(self, c):
        """
        Equality operator.
        """

        if self.working_dir != c.working_dir:
            return False
        # if self.runs != c.runs:
        #   return False
        if self.numiter != c.numiter:
            return False
        if self.logfreq != c.logfreq:
            return False
        if self.savefreq != c.savefreq:
            return False
        if self.num_c != c.num_c:
            return False
        if self.dilution != c.dilution:
            return False
        if self.rates != c.rates:
            return False
        if self.syn != c.syn:
            return False
        if self.beta != c.beta:
            return False

        return True

    summary_fields = [
        'numiter',
        'logfreq',
        'savefreq',
        'num_types',
        'num_c',
        'dilution',
        'num_rates',
        'rates',
        'syn',
        'beta'
    ]

    def as_dict(self):

        d = {'working_dir': self.working_dir,
             'numiter': self.numiter,
             'logfreq': self.logfreq,
             'savefreq': self.savefreq,
             **{f'num_c{i}': n for i, n in enumerate(self.num_c)},
             'dilution': self.dilution,
             **{f'rates{i}': n for i, n in enumerate(self.rates)},
             'syn': self.syn,
             'beta': self.beta}

        return d
