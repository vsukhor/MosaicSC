"""
This script loads and makes basic analysis of the simulation logs.

Monte-Carlo iterations represent the system 'time' evolution.
Functionality is similar to the accompanying jupyter notebook.
"""

from pathlib import Path
from common import import_log_files
from common import plot_timedata


if __name__ == '__main__':

    # Set the directory to the log files and
    # the min, max Monte Carlo run indexes:
    path = Path(__file__).parent.parent / 'examples/example1/'
    run_first = 0
    run_last = 1

    # Import data from the files:
    ravg, pat = import_log_files(path, [run_first, run_last])
    #'ravg' contains the averages over [run_first : run_last].

    # Fit the time coarse of the number of aggregates present in the
    # system and plot the result along with the original data.
    # Decreasing exponential function
    # $$y(x) = a e^{-x/b} + c$$
    # approximates the aggregation progression.
    # The initial guess is [a, b, c].
    ravg.fit_num_sc([65, 100, 56])
    plot_timedata('number of aggregates: runs ' + pat,
                  ravg.inds, ravg.num_sc['raw'],
                  ravg.num_sc['pars'],
                  ravg.num_sc['fit'],
                  colors=['b--', 'r'])

    # Fit the time coarse for the aggregare masses
    # and plot the result along with the original data.
    # Growing exponential function
    # $$y(x) = a(1 - e^{-x/b}) + c$$
    # approximates the progression.
    # The initial guess [a, b, c] is supplied for each
    # of the 5 mass components.
    ravg.fit_masses([[1., 50, 2.],
                     [0.2, 50, 2.],
                     [0.15, 50, 0.25],
                     [0.15, 50, 0.25],
                     [0.5, 50, 1.]])
    ravg.plot_aggregate_mass(pat, with_fit=True)
    print('Optimal parameters for the masses:')
    for i, p in enumerate(ravg.sc_mean_mass['pars']):
        print(f'Component {i} : {p}')

    # Plot time evolution of the interparticle connectivity:
    ravg.plot_connectivity(pat)
