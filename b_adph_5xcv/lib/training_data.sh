#!/bin/sh

(python ../lib/verified_trainingset_ptt.py ../genomes/NC_000913_2.gbk > ../data/nc000913_2_v.ptt &)

(python ../lib/verified_trainingset.py ../genomes/NC_000913_2.gbk > ../data/nc000913_2_v.dat &)

(python ../lib/idurfs.py 60 1 ../genomes/NC_000913_2.gbk > ../experiments/nc000913_2_u60_f1_dat &)
(python ../lib/idurfs.py 60 2 ../genomes/NC_000913_2.gbk > ../experiments/nc000913_2_u60_f2_dat &)
(python ../lib/idurfs.py 60 3 ../genomes/NC_000913_2.gbk > ../experiments/nc000913_2_u60_f3_dat &)
(python ../lib/idurfs.py 60 4 ../genomes/NC_000913_2.gbk > ../experiments/nc000913_2_u60_f4_dat &)
(python ../lib/idurfs.py 60 5 ../genomes/NC_000913_2.gbk > ../experiments/nc000913_2_u60_f5_dat &)
(python ../lib/idurfs.py 60 6 ../genomes/NC_000913_2.gbk > ../experiments/nc000913_2_u60_f6_dat &)

(python ../lib/idurfs.py 60 all ../genomes/NC_000913_2.gbk > ../data/nc000913_2_u60_dat &)












