#!/bin/sh


(python ../lib/log_odds.py ../viterbi/model_adph_nc000913_2_cv_1.vit ../viterbi/iid_nc000913_2_cv_1.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/model_adph_iid_nc000913_2_cv_1.lo &)

(python ../lib/log_odds.py ../viterbi/model_adph_nc000913_2_cv_2.vit ../viterbi/iid_nc000913_2_cv_2.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/model_adph_iid_nc000913_2_cv_2.lo &)

(python ../lib/log_odds.py ../viterbi/model_adph_nc000913_2_cv_3.vit ../viterbi/iid_nc000913_2_cv_3.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/model_adph_iid_nc000913_2_cv_3.lo &)

(python ../lib/log_odds.py ../viterbi/model_adph_nc000913_2_cv_4.vit ../viterbi/iid_nc000913_2_cv_4.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/model_adph_iid_nc000913_2_cv_4.lo &)

(python ../lib/log_odds.py ../viterbi/model_adph_nc000913_2_cv_5.vit ../viterbi/iid_nc000913_2_cv_5.vit ../data/nc000913_2_v.ptt ../data/nc000913_2_u60_dat > ../log_odds/model_adph_iid_nc000913_2_cv_5.lo &)


