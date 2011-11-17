#!/bin/sh

cp ../models/eco_adph_cv.psm ../experiments/eco_adph_cv_1.psm

(~/prism/1121/bin/upprism eco_adph_cv_1.psm eco_adph_nc000913_2_cv_1_sw eco_adph_nc000913_2_cv_1_sw_h > ../results/eco_adph_nc000913_2_cv_1.res &)

sed s/train_1/train_2/g eco_adph_cv_1.psm > eco_adph_cv_2.psm

(~/prism/1121/bin/upprism eco_adph_cv_2.psm eco_adph_nc000913_2_cv_2_sw eco_adph_nc000913_2_cv_2_sw_h > ../results/eco_adph_nc000913_2_cv_2.res &)

sed s/train_1/train_3/g eco_adph_cv_1.psm > eco_adph_cv_3.psm

(~/prism/1121/bin/upprism eco_adph_cv_3.psm eco_adph_nc000913_2_cv_adph_sw eco_adph_nc000913_2_cv_adph_sw_h > ../results/eco_adph_nc000913_2_cv_3.res &)

sed s/train_1/train_4/g eco_adph_cv_1.psm > eco_adph_cv_4.psm

(~/prism/1121/bin/upprism eco_adph_cv_4.psm eco_adph_nc000913_2_cv_4_sw eco_adph_nc000913_2_cv_4_sw_h > ../results/eco_adph_nc000913_2_cv_4.res &)

sed s/train_1/train_5/g eco_adph_cv_1.psm > eco_adph_cv_5.psm

(~/prism/1121/bin/upprism eco_adph_cv_5.psm eco_adph_nc000913_2_cv_5_sw eco_adph_nc000913_2_cv_5_sw_h > ../results/eco_adph_nc000913_2_cv_5.res &)


