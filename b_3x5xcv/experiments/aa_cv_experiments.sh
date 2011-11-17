#!/bin/sh

cp ../models/aa_3_cv.psm ../experiments/aa_3_cv_1.psm

(~/prism/1121/bin/upprism aa_3_cv_1.psm aa_3_nc000964_cv_1_sw aa_3_nc000964_cv_1_sw_h > ../results/aa_3_nc000964_cv_1.res &)

sed s/train_1/train_2/g aa_3_cv_1.psm > aa_3_cv_2.psm

(~/prism/1121/bin/upprism aa_3_cv_2.psm aa_3_nc000964_cv_2_sw aa_3_nc000964_cv_2_sw_h > ../results/aa_3_nc000964_cv_2.res &)

sed s/train_1/train_3/g aa_3_cv_1.psm > aa_3_cv_3.psm

(~/prism/1121/bin/upprism aa_3_cv_3.psm aa_3_nc000964_cv_3_sw aa_3_nc000964_cv_3_sw_h > ../results/aa_3_nc000964_cv_3.res &)

sed s/train_1/train_4/g aa_3_cv_1.psm > aa_3_cv_4.psm

(~/prism/1121/bin/upprism aa_3_cv_4.psm aa_3_nc000964_cv_4_sw aa_3_nc000964_cv_4_sw_h > ../results/aa_3_nc000964_cv_4.res &)

sed s/train_1/train_5/g aa_3_cv_1.psm > aa_3_cv_5.psm

(~/prism/1121/bin/upprism aa_3_cv_5.psm aa_3_nc000964_cv_5_sw aa_3_nc000964_cv_5_sw_h > ../results/aa_3_nc000964_cv_5.res &)


