#!/bin/sh

mkdir ../tmp
mkdir ../data
mkdir ../experiments
mkdir ../results
mkdir ../viterbi
mkdir ../log_odds
mkdir ../cm
mkdir ../roc
mkdir ../auc
mkdir ../tables

cp ../models/aa_a_cv.psm ../experiments/aa_a_cv_1.psm
cp ../models/eco_a_cv.psm ../experiments/eco_a_cv_1.psm
cp ../models/i3pmc_a_cv.psm ../experiments/i3pmc_a_cv_1.psm
cp ../models/mc5_a_cv.psm ../experiments/mc5_a_cv_1.psm
cp ../models/mm_a_cv.psm ../experiments/mm_a_cv_1.psm

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

cp ../lib/auc.sh .

sed s/000913_2/$1/g ../lib/xx_tables_av.sh > tables_av.sh
chmod u+x tables_av.sh


