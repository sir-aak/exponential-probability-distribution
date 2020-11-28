import numpy as np
import matplotlib.pyplot as plt


# exponential probability density function with rate a
def exponentialPDF (x, a = 1.0):
    return (a * np.exp(-a * x))


# exponential cumulative density function with rate a
def exponentialCDF (x, a = 1.0):
    return (1 - np.exp(-a * x))


def view():
    
    # rate parameters
    l1  = 0.5
    l2  = 1.0
    l3  = 1.5
    
    # create data for plot
    X   = np.linspace(0.0, 5.0, 100)
    
    Yp1 = exponentialPDF(X, l1)
    Yp2 = exponentialPDF(X, l2)
    Yp3 = exponentialPDF(X, l3)
    
    Yc1 = exponentialCDF(X, l1)
    Yc2 = exponentialCDF(X, l2)
    Yc3 = exponentialCDF(X, l3)
    
    fig = plt.figure()
    fig.set_size_inches(14, 6)
    fig.suptitle("exponential probability distribution", fontsize=14)
    plt.subplots_adjust(wspace=0.35)
    
    # plot probability density function
    plt.subplot(1, 2, 1)
    plt.title("exponential PDF")
    plt.plot(X, Yp1, label="$\lambda$ = " + str(l1))
    plt.plot(X, Yp2, label="$\lambda$ = " + str(l2))
    plt.plot(X, Yp3, label="$\lambda$ = " + str(l3))
    plt.xlabel("$x$")
    plt.ylabel("$P(x)$")
    plt.grid(color="lightgray")
    plt.legend(loc="upper right")
    plt.text(3.75, 1.1, "$P(x) = \lambda\,\exp (-\lambda x)$", fontsize=10)
    
    plt.subplots_adjust(wspace=0.2)
    
    # plot cumulative density function
    plt.subplot(1, 2, 2)
    plt.title("exponential CDF")
    plt.plot(X, Yc1, label="$\lambda$ = " + str(l1))
    plt.plot(X, Yc2, label="$\lambda$ = " + str(l2))
    plt.plot(X, Yc3, label="$\lambda$ = " + str(l3))
    plt.xlabel("$x$")
    plt.ylabel("$C(x)$")
    plt.grid(color="lightgray")
    plt.legend(loc="lower right")
    plt.text(3.6, 0.24, "$C(x) = 1 - \exp (-\lambda x)$", fontsize=10)


view()
