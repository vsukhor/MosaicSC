
import numpy as np
from scipy.optimize import curve_fit


def skip_lines(n, f):
    """
    Skip 'n' lines while reading from text file 'f'.
    """

    for _ in range(n):
        f.readline()


def fit_exp(gd, data_x, data_y, p0=None):
    """
    Fits an exponent to 'data_y' over 'data_x'.

    Fits exponential function to 'data_y' at 'data_x'using 'p0' as
    initial guess. The exponent is growing if gd=='grw' and decaying
    otherwise.
    """

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
