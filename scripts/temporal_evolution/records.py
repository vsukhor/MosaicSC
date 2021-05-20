from common import fit_exp


class Records:

    """ Container for time-dependent variables recorded in the log file.
    """

    runs_read_in = []                   # run indexes
    num_conn = 5                        # number of connections
    time_unit = 'sweeps'                # MS iteration sweeps
    time_label = 'Time ('+ time_unit +')'

    fields = [                          # field names; see __init__() for the detailed description
        'run',
        'seed',
        'lattice_dims',
        'inds',
        'energy_tot',
        'num_sc',
        'sc_mean_mass',
        'connectivity'
    ]

    # ------------------------------------------------------------------------------------------------------------------
    def __init__(self):

        self.runs = None            # run indexes; if len(self.runs) > 1, all the fields except 'runs',
                                    # 'seed', 'lattice_dims' and 'inds' are average values over the 'runs'.
        self.seed = None            # rng seeds used to produce the runs
        self.lattice_dims = None    # lattice dimensions
        self.inds = []              # MC iteration indexes; all the following params correspond to these 'time' instances

        # total system free enetgy: raw data, fit, fit parameters:
        self.energy_tot = {'raw' : [], 'fit' : None, 'pars' : None, 'eqation' : None}

        # number of particle aggregates: raw data, fit, fit parameters:
        self.num_sc = {'raw' : [], 'fit' : None, 'pars' : None, 'eqation' : None}

        # average particle numbers per aggregate, for each particle type: raw data, fit, fit parameters:
        self.sc_mean_mass = {'raw' : [], 'fit' : None, 'pars' : None, 'eqation' : None}

        # interparticle connectivity, for all possible connectivity pairs:
        self.connectivity = [[], [], [], [], []]

    # ------------------------------------------------------------------------------------------------------------------
    def add(self, rec):

        """ Extract information from a string record 'rec' adding it to the already available data.
        """

        q = [r.split() for r in rec]

        self.inds.append(int(q[0][0]))

        self.energy_tot['raw'].append(float(q[1][15]))

        self.num_sc['raw'].append(int(q[2][1]))
        self.sc_mean_mass['raw'].append([float(m) for m in q[2][3:8]])

        self.connectivity[0].append([float(m) for m in q[3][1:6]])
        self.connectivity[1].append([float(m) for m in q[3][7:11]])
        self.connectivity[2].append([float(m) for m in q[3][12:14]])
        self.connectivity[3].append([float(m) for m in q[3][15:25]])
        self.connectivity[4].append([float(m) for m in q[3][26:32]])

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def read(f):

        """ Read four lines of text from a log file 'f'. These comprise a single record.
        """

        return f.readline(), \
               f.readline(), \
               f.readline(), \
               f.readline()

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def avg_energy(rs):

        """ Average the total energy over the list 'rs' of Record's.
        """

        return [sum(q)/len(rs) for q in zip(*[r.energy_tot['raw'] for r in rs])]

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def avg_num_sc(rs):

        """ Average the number of particle aggregates over the list 'rs' of Record's.
        """

        return [sum(q)/len(rs) for q in zip(*[r.num_sc['raw'] for r in rs])]

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def avg_mass(rs):

        """ Average the number of particles per aggregate: over the list 'rs' of Record's.
        """

        return [[sum(q)/len(rs) for q in zip(*[r.sc_mean_mass['raw'][h] for r in rs])]
                for h in range(len(rs[0].sc_mean_mass['raw']))]

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def avg_conn(rs):

        """ Average the connectivity over the list 'rs' of Record's.
        """

        return [[[sum(q)/len(rs) for q in zip(*[r.connectivity[k][h] for r in rs])]
                 for h in range(len(rs[0].connectivity[k]))]
                for k in range(Records.num_conn)]

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def are_compatible(rs):

        for r in rs[1:]:
            if r.lattice_dims != rs[0].lattice_dims:  return False
            if r.inds != rs[0].inds:                  return False

        return True

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def average(rs):

        """ Average over the list 'rs' of Record's.
        """

        runs = [r for rr in rs for r in rr.runs]
        if len(rs) > 1 and not Records.are_compatible(rs):
            print(f'Runs {runs} are not compatible')
            sys.exit([-1])

        rav = Records()

        rav.runs = runs
        rav.seed = [r.seed for r in rs]
        rav.lattice_dims = rs[0].lattice_dims
        rav.inds = rs[0].inds
        rav.energy_tot['raw'] = Records.avg_energy(rs)
        rav.num_sc['raw'] = Records.avg_num_sc(rs)
        rav.sc_mean_mass['raw'] = Records.avg_mass(rs)
        rav.connectivity = Records.avg_conn(rs)

        return rav

    # ------------------------------------------------------------------------------------------------------------------
    @staticmethod
    def to_pandas(self, rs):
        df = pd.DataFrame()

    # ------------------------------------------------------------------------------------------------------------------
    def fit_num_sc(self, p0):

        """ Fit the time course of the number of particle aggregates.
            A decaying exponential function is applied to approximate the progress.
        """

        self.num_sc['fit'], \
        self.num_sc['pars'], \
        self.num_sc['equation'] = \
            fit_exp('dec', self.inds, self.num_sc['raw'], p0)

    # ------------------------------------------------------------------------------------------------------------------
    def fit_masses(self, p0):

        """ Fit the time course of the number of particle per aggregate.
            A growing exponential saturation is applied to approximate the progress.
        """

        self.sc_mean_mass['fit'] = []
        self.sc_mean_mass['pars'] = []
        self.sc_mean_mass['equation'] = []
        for i in range(len(self.sc_mean_mass['raw'][0])):
            f, p, eq = fit_exp('grw', self.inds, [k[i] for k in self.sc_mean_mass['raw']], p0[i])
            self.sc_mean_mass['fit'].append(f)
            self.sc_mean_mass['pars'].append(p)
            self.sc_mean_mass['equation'].append(eq)


    # ------------------------------------------------------------------------------------------------------------------
    def plot_aggregate_mass(self, pat, with_fit=False, figsize=None):

        """ Plot time evolution of the aggregate masses.
        """

        import matplotlib.pyplot as plt

        colors = ['k', 'b', 'g', 'y', 'r']
        labels = ['total', 'c1', 'c2', 'c3', 'c4']

        fig = plt.figure(figsize=figsize)
        ax = fig.add_subplot(111)

        x = [int(i/1000) for i in self.inds]

        for j in range(len(self.sc_mean_mass['raw'][0])):
            y = [k[j] for k in self.sc_mean_mass['raw']]
            if not with_fit:
                ax.plot(x, y, colors[j], label=labels[j])
            else:
                ax.plot(x, y, colors[j]+'--', label=labels[j])
                ax.plot(x, self.sc_mean_mass['fit'][j], c=colors[j])

        ax.set_xlabel(Records.time_label+ 'x1000')
        ax.set_xlim([0., x[-1] * 1.2])  # to accommodate the legend
        plt.legend()
        plt.grid(True)
        fig.suptitle('mean aggregate mass: runs ' + pat)

        plt.show()

    # ------------------------------------------------------------------------------------------------------------------
    def plot_connectivity(self, pat):

        """ Plot time evolution of the interparticle connectivity.
        """

        import matplotlib.pyplot as plt

        fig, ax = plt.subplots(1, Records.num_conn, figsize=(20., 5.))
        fig.suptitle('connectivity strength: runs ' + pat)

        x = [int(i/1000) for i in self.inds]

        for i in range(Records.num_conn):
            for j in range(len(self.connectivity[i][0])):
                ax[i].plot(x, [k[j] for k in self.connectivity[i]])
            ax[i].set_xlabel(Records.time_label+ 'x1000')
            ax[i].set_title('particle type ' + str(i))
            ax[i].set_ylim([0., 1.])
            ax[i].grid(True)
#        plt.grid(True)

        plt.show()

    summary_fields = [
        'lattice_dims',
        'num_sc_pars',
        'sc_mean_mass_pars',
        'num_runs',
        'runs'
    ]

    # ------------------------------------------------------------------------------------------------------------------
    def to_summary(self):

        return \
            self.lattice_dims, \
            self.num_sc_pars, \
            self.sc_mean_mass_pars, \
            len(self.runs), \
            self.runs
