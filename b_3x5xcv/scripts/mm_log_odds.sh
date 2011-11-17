#!/bin/sh



(python ../lib/log_odds.py ../viterbi/mm_3_nc000964_cv_2.vit ../viterbi/iid_nc000964_cv_2.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/mm_3_iid_nc000964_cv_2.lo &)

(python ../lib/log_odds.py ../viterbi/mm_3_nc000964_cv_3.vit ../viterbi/iid_nc000964_cv_3.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/mm_3_iid_nc000964_cv_3.lo &)

(python ../lib/log_odds.py ../viterbi/mm_3_nc000964_cv_4.vit ../viterbi/iid_nc000964_cv_4.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/mm_3_iid_nc000964_cv_4.lo &)

(python ../lib/log_odds.py ../viterbi/mm_3_nc000964_cv_5.vit ../viterbi/iid_nc000964_cv_5.vit ../data/nc000964_v.ptt ../data/nc000964_u60_dat > ../log_odds/mm_3_iid_nc000964_cv_5.lo &)


