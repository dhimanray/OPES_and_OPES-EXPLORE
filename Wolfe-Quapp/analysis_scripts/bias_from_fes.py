import numpy as np

#load the fes obtained from FES_from_State.py
l = np.loadtxt('fes_opes.dat')
l1 = np.loadtxt('fes_explore.dat')
BARRIER = 20.0
BARRIER_explore = 10.0
kt = 1.0

biasfactor = BARRIER/kt
biasfactor_explore = BARRIER_explore/kt

bias_opes = l[:,1]*(1./biasfactor-1.)+BARRIER
bias_explore = l1[:,1]*(1./biasfactor_explore-1.)+BARRIER_explore

bias_total = bias_opes + bias_explore

for i in range(len(l)):
    print(l[i,0],bias_opes[i],bias_explore[i],bias_total[i])
