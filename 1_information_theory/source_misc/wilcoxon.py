import numpy as np
from scipy.stats import wilcoxon

h_easy=np.array([2,3,4]) # h values without memory task go here
h_hard=np.array([2.1,3.1,3.9]) # h values with memory task go here
difference=h_easy-h_hard

w, p = wilcoxon(difference)
print(p) # probability of data give the hypothesis they come from the same distribution
