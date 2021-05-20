

class Config:

    """ Encapsulates configuration parameters.
    """

    def __init__(self):

        self.workingDir_out = None
        self.runs = None
        self.numiter = None
        self.logfreq = None
        self.savefreq = None
        self.num_c = None
        self.dilution = None
        self.rates = None
        self.syn = None
        self.beta = None

    # ------------------------------------------------------------------------------------------------------------------
    def readin(self, f):

        """ Read the configuration data from the log file 'f'
        """

        from common import skip_lines

        skip_lines(2, f)            # Parameters, workingDir_in
        self.workingDir_out = f.readline().split()[1]
        self.runs = [int(f.readline().split()[2]),
                     int(f.readline().split()[2])]
        skip_lines(2, f)            # nthreads, resume
        self.numiter = int(f.readline().split()[2])
        self.logfreq = int(f.readline().split()[2])
        skip_lines(2, f)            # detailedfreq, finaldetailed, savefreq
        self.savefreq = int(f.readline().split()[2])
        self.num_c = [int(x) for x in f.readline().split()[2:]]
        self.dilution = float(f.readline().split()[2])
        skip_lines(1, f)            # inum
        self.rates = [float(x) for x in f.readline().split()[2:]]
        self.syn = float(f.readline().split()[2])
        self.beta = float(f.readline().split()[2])

    # ------------------------------------------------------------------------------------------------------------------
    def  __eq__(self, c):

        """ Equality operator.
        """

        if self.workingDir_out != c.workingDir_out: return False
        #       if self.runs != c.runs:             return False
        if self.numiter != c.numiter:               return False
        if self.logfreq != c.logfreq:               return False
        if self.savefreq != c.savefreq:             return False
        if self.num_c != c.num_c:                   return False
        if self.dilution != c.dilution:             return False
        if self.rates != c.rates:                   return False
        if self.syn != c.syn:                       return False
        if self.beta != c.beta:                     return False

        return True

    # ------------------------------------------------------------------------------------------------------------------
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

    # ------------------------------------------------------------------------------------------------------------------
    def to_summary(self):

        return \
            self.numiter, \
            self.logfreq, \
            self.savefreq, \
            len(self.num_c), \
            self.num_c, \
            self.dilution, \
            len(self.rates), \
            self.rates, \
            self.syn, \
            self.beta


    # ------------------------------------------------------------------------------------------------------------------
    def as_dict(self):

        d = {'workingDir_out' : self.workingDir_out,
             'numiter' : self.numiter,
             'logfreq' : self.logfreq,
             'savefreq' : self.savefreq,
             **{'num_c'+str(i) : n for i, n in enumerate(self.num_c)},
             'dilution' : self.dilution,
             **{'rates'+str(i) : n for i, n in enumerate(self.rates)},
             'syn' : self.syn,
             'beta' : self.beta}

        return d
