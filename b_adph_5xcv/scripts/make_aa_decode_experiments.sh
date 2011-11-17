#!/bin/sh

sed s/cv_1/cv_2/g ../experiments/aa_cv_1_decode.sh > ../experiments/aa_cv_2_decode.sh

sed s/cv_1/cv_3/g ../experiments/aa_cv_1_decode.sh > ../experiments/aa_cv_3_decode.sh

sed s/cv_1/cv_4/g ../experiments/aa_cv_1_decode.sh > ../experiments/aa_cv_4_decode.sh

sed s/cv_1/cv_5/g ../experiments/aa_cv_1_decode.sh > ../experiments/aa_cv_5_decode.sh

chmod u+x ../experiments/aa_cv_1_decode.sh
chmod u+x ../experiments/aa_cv_2_decode.sh
chmod u+x ../experiments/aa_cv_3_decode.sh
chmod u+x ../experiments/aa_cv_4_decode.sh
chmod u+x ../experiments/aa_cv_5_decode.sh



