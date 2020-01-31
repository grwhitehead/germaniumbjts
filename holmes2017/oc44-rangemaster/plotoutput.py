#!/usr/bin/env python3
#coding: utf-8

import sys
import csv
import numpy as np
import matplotlib.pyplot as plt

figure1 = plt.figure(1, (20, 10))
plt.title('Rangemaster Output')
plt.xlabel('Time [s]')
plt.ylabel('Voltage [V]')
plt.grid()

legend = []
for fname in sys.argv[2:]:
    f = open(fname, 'r')
    fdata = list(csv.reader(f, delimiter=' ', skipinitialspace='true'))
    plt.plot([float(item[0]) for item in fdata], [float(item[1]) for item in fdata])
    legend.append(fname)

plt.legend(legend, loc=(.05,.1))

plt.tight_layout()

plt.savefig(sys.argv[1]);
