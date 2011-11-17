#!/bin/sh

cp ../models/mc5_3_cv.psm ../experiments/mc5_3_cv_1.psm

(~/prism/1121/bin/upprism mc5_3_cv_1.psm mc5_3_nc000913_2_cv_1_sw mc5_3_nc000913_2_cv_1_sw_h > ../results/mc5_3_nc000913_2_cv_1.res &)

sed s/train_1/train_2/g mc5_3_cv_1.psm > mc5_3_cv_2.psm

(~/prism/1121/bin/upprism mc5_3_cv_2.psm mc5_3_nc000913_2_cv_2_sw mc5_3_nc000913_2_cv_2_sw_h > ../results/mc5_3_nc000913_2_cv_2.res &)

sed s/train_1/train_3/g mc5_3_cv_1.psm > mc5_3_cv_3.psm

(~/prism/1121/bin/upprism mc5_3_cv_3.psm mc5_3_nc000913_2_cv_3_sw mc5_3_nc000913_2_cv_3_sw_h > ../results/mc5_3_nc000913_2_cv_3.res &)

sed s/train_1/train_4/g mc5_3_cv_1.psm > mc5_3_cv_4.psm

(~/prism/1121/bin/upprism mc5_3_cv_4.psm mc5_3_nc000913_2_cv_4_sw mc5_3_nc000913_2_cv_4_sw_h > ../results/mc5_3_nc000913_2_cv_4.res &)

sed s/train_1/train_5/g mc5_3_cv_1.psm > mc5_3_cv_5.psm

(~/prism/1121/bin/upprism mc5_3_cv_5.psm mc5_3_nc000913_2_cv_5_sw mc5_3_nc000913_2_cv_5_sw_h > ../results/mc5_3_nc000913_2_cv_5.res &)


