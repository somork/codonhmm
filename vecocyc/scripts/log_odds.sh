#!/bin/sh

(python ../lib/log_odds.py ../viterbi/aa_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/aa_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/eco_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/eco_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/i3pmc_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/i3pmc_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/mc5_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/mc5_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/mm_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/mm_iid_nc000913_2.lo &)



