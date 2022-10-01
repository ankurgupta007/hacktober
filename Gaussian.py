import numpy as np
import matplotlib.pyplot as plt

mu,sigma = 0,0.1
s= np.random.normal(mu,sigma,10000)
count, bins, ignored = plt.hist(s,100,density = True)
plt.plot((bins,1/(sigma * np.pi)) * np.exp(-(bins - mu)**2 / (2*sigma**2)),linewidth = 2,color = "r")
plt.show()
