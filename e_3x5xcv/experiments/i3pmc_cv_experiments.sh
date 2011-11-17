#!/bin/sh

cp ../models/i3pmc_3_cv.psm ../experiments/i3pmc_3_cv_1.psm

(~/prism/1121/bin/upprism i3pmc_3_cv_1.psm i3pmc_3_nc000913_2_cv_1_sw i3pmc_3_nc000913_2_cv_1_sw_h > ../results/i3pmc_3_nc000913_2_cv_1.res &)

sed s/train_1/train_2/g i3pmc_3_cv_1.psm > i3pmc_3_cv_2.psm

(~/prism/1121/bin/upprism i3pmc_3_cv_2.psm i3pmc_3_nc000913_2_cv_2_sw i3pmc_3_nc000913_2_cv_2_sw_h > ../results/i3pmc_3_nc000913_2_cv_2.res &)

sed s/train_1/train_3/g i3pmc_3_cv_1.psm > i3pmc_3_cv_3.psm

(~/prism/1121/bin/upprism i3pmc_3_cv_3.psm i3pmc_3_nc000913_2_cv_3_sw i3pmc_3_nc000913_2_cv_3_sw_h > ../results/i3pmc_3_nc000913_2_cv_3.res &)

sed s/train_1/train_4/g i3pmc_3_cv_1.psm > i3pmc_3_cv_4.psm

(~/prism/1121/bin/upprism i3pmc_3_cv_4.psm i3pmc_3_nc000913_2_cv_4_sw i3pmc_3_nc000913_2_cv_4_sw_h > ../results/i3pmc_3_nc000913_2_cv_4.res &)

sed s/train_1/train_5/g i3pmc_3_cv_1.psm > i3pmc_3_cv_5.psm

(~/prism/1121/bin/upprism i3pmc_3_cv_5.psm i3pmc_3_nc000913_2_cv_5_sw i3pmc_3_nc000913_2_cv_5_sw_h > ../results/i3pmc_3_nc000913_2_cv_5.res &)


