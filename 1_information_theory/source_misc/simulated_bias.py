import math # I know I could've used the np log, but I wanted to emphasis that log_2(x)=ln(x)/ln(2)
import numpy as np

def plogp(p):
    if p==0:
        return 0.0
    return p*math.log(p)/math.log(2.0)

digits=list(range(0,10))


n_digits=120 # number of digits in each experiment

n_trials = 10000 # number of simulated experiments

h_vals=[]

for c_trials in range(0,n_trials):

    this_h=0.0
    fs=np.zeros(10)
    picked=np.random.choice(digits,size=n_digits)
    for d in picked:
        fs[d]+=1
    ps=[f/n_digits for f in fs]
    for p in ps:
        this_h-=plogp(p)
    h_vals.append(this_h)

print(np.mean(h_vals))
print(math.log(10.0)/math.log(2))

    
