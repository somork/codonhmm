#!/bin/sh

cp ../models/mm_cv.psm ../experiments/mm_cv_1.psm

(~/prism/1121/bin/upprism mm_cv_1.psm mm_nc000913_2_cv_1_sw mm_nc000913_2_cv_1_sw_h > ../results/mm_nc000913_2_cv_1.res &)

sed s/train_1/train_2/g mm_cv_1.psm > mm_cv_2.psm

(~/prism/1121/bin/upprism mm_cv_2.psm mm_nc000913_2_cv_2_sw mm_nc000913_2_cv_2_sw_h > ../results/mm_nc000913_2_cv_2.res &)

sed s/train_1/train_3/g mm_cv_1.psm > mm_cv_3.psm

(~/prism/1121/bin/upprism mm_cv_3.psm mm_nc000913_2_cv_3_sw mm_nc000913_2_cv_3_sw_h > ../results/mm_nc000913_2_cv_3.res &)

sed s/train_1/train_4/g mm_cv_1.psm > mm_cv_4.psm

(~/prism/1121/bin/upprism mm_cv_4.psm mm_nc000913_2_cv_4_sw mm_nc000913_2_cv_4_sw_h > ../results/mm_nc000913_2_cv_4.res &)

sed s/train_1/train_5/g mm_cv_1.psm > mm_cv_5.psm

(~/prism/1121/bin/upprism mm_cv_5.psm mm_nc000913_2_cv_5_sw mm_nc000913_2_cv_5_sw_h > ../results/mm_nc000913_2_cv_5.res &)

