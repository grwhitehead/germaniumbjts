#!/usr/bin/env python3
#coding: utf-8

import sys
import csv
import numpy as np
import matplotlib.pyplot as plt

figure1 = plt.figure(1, (20, 10))
plt.title('AC128 Common-emitter Characteristics')
plt.xlabel('-Vce [V]')
plt.ylabel('Ic [mA]')
plt.grid()

legend = []
for fname in sys.argv[2:]:
    f = open(fname, 'r')
    fdata = list(csv.reader(f, delimiter=' ', skipinitialspace='true'))
    for i in range(10):
        fdatai = fdata[i*101:(i+1)*101]
        plt.plot([-float(item[0]) for item in fdatai], [float(item[1]) for item in fdatai])
        legend.append("Ib = "+str(i+1)+"mA")

plt.legend(legend, loc=(.05,.1))

plt.tight_layout()

plt.savefig(sys.argv[1]);
