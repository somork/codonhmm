#!/bin/sh

(python ../lib/log_odds.py ../viterbi/aa_3_nc000964_cv_1.vit ../viterbi/iid_nc000964_cv_1.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/aa_3_iid_nc000964_cv_1.lo &)

(python ../lib/log_odds.py ../viterbi/i3pmc_3_nc000964_cv_1.vit ../viterbi/iid_nc000964_cv_1.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo &)

(python ../lib/log_odds.py ../viterbi/mm_3_nc000964_cv_1.vit ../viterbi/iid_nc000964_cv_1.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/mm_3_iid_nc000964_cv_1.lo &)


