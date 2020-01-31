* Holmes Fuzz Face
*
* B. Holmes, M. Holters, M. van Walstijn. “Comparison of Germanium Bipolar Junction Transistor Models for Real-Time Circuit Simulation”, Proceedings of the 20th International Conference on Digital Audio Effects, Edinburgh, Scotland, Sept. 2017

.subckt fuzzface in out fuz=0.99 vol=0.99

Rin in 1 1k
C5 1 0 6.8n
C3 1 2 2.2u

Q1 4 2 3 AC128
R3 2 5 62k
R4 4 0 36k

Q2 6 4 5 AC128
Rfuz1 3 9 {fuz*1k}
Rfuz2 9 5 {(1-fuz)*1k}
C1 9 0 22u

R1 6 7 11k
R2 7 0 680
C2 7 8 0.1u
Rvol1 8 out {(1-vol)*500k}
Rvol2 out 0 {vol*500k}

Vbatt 3 0 DC 9.0

.ends fuzzface

