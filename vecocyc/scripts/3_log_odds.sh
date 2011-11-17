#!/bin/sh

(python ../lib/log_odds.py ../viterbi/aa_3_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/aa_3_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/eco_3_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/eco_3_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/i3pmc_3_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/i3pmc_3_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/mc5_3_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/mc5_3_iid_nc000913_2.lo &)

(python ../lib/log_odds.py ../viterbi/mm_3_nc000913_2.vit ../viterbi/iid_nc000913_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/mm_3_iid_nc000913_2.lo &)



