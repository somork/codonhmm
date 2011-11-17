#!/bin/sh

cp ../lib/iid_cv_experiments.sh ../experiments/iid_cv_experiments.sh
cp ../models/iid_a_cv.psm ../experiments/iid_a_cv_1.psm

sed s/iid/mc5/g ../experiments/iid_cv_experiments.sh > ../experiments/mc5_cv_experiments.sh
chmod u+x ../experiments/mc5_cv_experiments.sh

sed s/iid/mm/g ../experiments/iid_cv_experiments.sh > ../experiments/mm_cv_experiments.sh
chmod u+x ../experiments/mm_cv_experiments.sh

sed s/iid/i3pmc/g ../experiments/iid_cv_experiments.sh > ../experiments/i3pmc_cv_experiments.sh
chmod u+x ../experiments/i3pmc_cv_experiments.sh

sed s/iid/aa/g ../experiments/iid_cv_experiments.sh > ../experiments/aa_cv_experiments.sh
chmod u+x ../experiments/aa_cv_experiments.sh

sed s/iid/eco/g ../experiments/iid_cv_experiments.sh > ../experiments/eco_cv_experiments.sh
chmod u+x ../experiments/eco_cv_experiments.sh




