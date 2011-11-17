#!/bin/sh

cp ../lib/iid_cv_1_decode.sh ../experiments/iid_cv_1_decode.sh
cp ../lib/make_iid_decode_experiments.sh ../scripts/make_iid_decode_experiments.sh
chmod u+x make_iid_decode_experiments.sh
./make_iid_decode_experiments.sh

sed s/iid/mc5/g ../experiments/iid_cv_1_decode.sh > ../experiments/mc5_cv_1_decode.sh
sed s/iid/mc5/g make_iid_decode_experiments.sh > make_mc5_decode_experiments.sh
chmod u+x make_mc5_decode_experiments.sh
./make_mc5_decode_experiments.sh

sed s/iid/mm/g ../experiments/iid_cv_1_decode.sh > ../experiments/mm_cv_1_decode.sh
sed s/iid/mm/g make_iid_decode_experiments.sh > make_mm_decode_experiments.sh
chmod u+x make_mm_decode_experiments.sh
./make_mm_decode_experiments.sh

sed s/iid/i3pmc/g ../experiments/iid_cv_1_decode.sh > ../experiments/i3pmc_cv_1_decode.sh
sed s/iid/i3pmc/g make_iid_decode_experiments.sh > make_i3pmc_decode_experiments.sh
chmod u+x make_i3pmc_decode_experiments.sh
./make_i3pmc_decode_experiments.sh

sed s/iid/aa/g ../experiments/iid_cv_1_decode.sh > ../experiments/aa_cv_1_decode.sh
sed s/iid/aa/g make_iid_decode_experiments.sh > make_aa_decode_experiments.sh
chmod u+x make_aa_decode_experiments.sh
./make_aa_decode_experiments.sh

sed s/iid/eco/g ../experiments/iid_cv_1_decode.sh > ../experiments/eco_cv_1_decode.sh
sed s/iid/eco/g make_iid_decode_experiments.sh > make_eco_decode_experiments.sh
chmod u+x make_eco_decode_experiments.sh
./make_eco_decode_experiments.sh


