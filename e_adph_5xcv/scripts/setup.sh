#!/bin/sh

mkdir ../tmp
mkdir ../experiments
mkdir ../results
mkdir ../log_odds
mkdir ../cm
mkdir ../roc
mkdir ../auc
mkdir ../tables
mkdir ../learn_stats

cp ../models/aa_adph_cv.psm ../experiments/aa_adph_cv_1.psm
cp ../models/eco_adph_cv.psm ../experiments/eco_adph_cv_1.psm
cp ../models/i3pmc_adph_cv.psm ../experiments/i3pmc_adph_cv_1.psm
cp ../models/mc5_adph_cv.psm ../experiments/mc5_adph_cv_1.psm
cp ../models/mm_adph_cv.psm ../experiments/mm_adph_cv_1.psm

sed s/000913_2/$1/g ../lib/training_data.sh > training_data.sh
chmod u+x ./training_data.sh
./training_data.sh

sed s/000913_2/$1/g ../lib/cross_validation_data.sh > cross_validation_data.sh
chmod u+x ./cross_validation_data.sh

sed s/000913_2/$1/g ../lib/xx_cv_experiments.sh > ../lib/iid_cv_experiments.sh
chmod u+x ../lib/iid_cv_experiments.sh

cp ../lib/make_cv_experiments.sh .
./make_cv_experiments.sh

cp ../lib/make_iid_decode_experiments.sh .

sed s/000913_2/$1/g ../lib/xx_cv_1_decode.sh > ../lib/iid_cv_1_decode.sh
chmod u+x ../lib/iid_cv_1_decode.sh
cp ../lib/make_decode_experiments.sh .
./make_decode_experiments.sh

sed s/000913_2/$1/g ../lib/xx_concat_iid_viterbi.sh > concat_iid_viterbi.sh
chmod u+x concat_iid_viterbi.sh

sed s/000913_2/$1/g ../lib/xx_log_odds.sh > ../lib/model_log_odds.sh
chmod u+x ../lib/model_log_odds.sh
cp ../lib/make_log_odds.sh .
./make_log_odds.sh

sed s/000913_2/$1/g ../lib/xx_get_stuff_from_lo.sh > ../lib/model_get_stuff_from_lo.sh
chmod u+x ../lib/model_get_stuff_from_lo.sh
cp ../lib/make_get_stuff_from_lo.sh .
./make_get_stuff_from_lo.sh

sed s/000913_2/$1/g ../lib/xx_model_auc.sh > ../lib/model_auc.sh
chmod u+x ../lib/model_auc.sh

sed s/000913_2/$1/g ../lib/xx_concat_auc.sh > concat_auc.sh
chmod u+x concat_auc.sh

sed s/000913_2/$1/g ../lib/xx_learn_stats.sh > learn_stats.sh
chmod u+x learn_stats.sh

sed s/000913_2/$1/g ../lib/xx_tables_av.sh > tables_av.sh
chmod u+x tables_av.sh

cp ../lib/concat_viterbi.sh .
cp ../lib/auc.sh .

