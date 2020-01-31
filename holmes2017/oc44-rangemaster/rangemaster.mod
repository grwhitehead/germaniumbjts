* Holmes Rangemaster
*
* B. Holmes, M. Holters, M. van Walstijn. “Comparison of Germanium Bipolar Junction Transistor Models for Real-Time Circuit Simulation”, Proceedings of the 20th International Conference on Digital Audio Effects, Edinburgh, Scotland, Sept. 2017

.subckt rangemaster in out vol=0.99

Rin in 1 1k
C1 1 2 4.7n

R1 3 2 470k
R2 2 0 68k

Q1 4 2 5 OC44

R3 5 0 3.9k
C2 5 0 47u

Rvol1 3 6 {vol*10K}
Rvol2 6 4 {(1-vol)*10K}
C3 6 out 10n

Rload out 0 1meg

Vbatt 0 3 DC 9.0

.ends rangemaster

