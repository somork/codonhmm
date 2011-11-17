#!/bin/sh

cp ../models/eco_cv.psm ../experiments/eco_cv_1.psm

(~/prism/1121/bin/upprism eco_cv_1.psm eco_nc000964_cv_1_sw eco_nc000964_cv_1_sw_h > ../results/eco_nc000964_cv_1.res &)

sed s/train_1/train_2/g eco_cv_1.psm > eco_cv_2.psm

(~/prism/1121/bin/upprism eco_cv_2.psm eco_nc000964_cv_2_sw eco_nc000964_cv_2_sw_h > ../results/eco_nc000964_cv_2.res &)

sed s/train_1/train_3/g eco_cv_1.psm > eco_cv_3.psm

(~/prism/1121/bin/upprism eco_cv_3.psm eco_nc000964_cv_3_sw eco_nc000964_cv_3_sw_h > ../results/eco_nc000964_cv_3.res &)

sed s/train_1/train_4/g eco_cv_1.psm > eco_cv_4.psm

(~/prism/1121/bin/upprism eco_cv_4.psm eco_nc000964_cv_4_sw eco_nc000964_cv_4_sw_h > ../results/eco_nc000964_cv_4.res &)

sed s/train_1/train_5/g eco_cv_1.psm > eco_cv_5.psm

(~/prism/1121/bin/upprism eco_cv_5.psm eco_nc000964_cv_5_sw eco_nc000964_cv_5_sw_h > ../results/eco_nc000964_cv_5.res &)


