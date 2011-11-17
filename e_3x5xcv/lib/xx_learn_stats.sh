#!/bin/sh

cat ../results/aa_3_nc000913_2_cv_1.res ../results/aa_3_nc000913_2_cv_2.res ../results/aa_3_nc000913_2_cv_3.res ../results/aa_3_nc000913_2_cv_4.res ../results/aa_3_nc000913_2_cv_5.res > ../results/aa_3_nc000913_2_cv.res

python ../lib/learn_stats.py ../results/aa_3_nc000913_2_cv.res gs > ../learn_stats/aa_3_nc000913_2_cv.gs

python ../lib/learn_stats.py ../results/aa_3_nc000913_2_cv.res vfe > ../learn_stats/aa_3_nc000913_2_cv.vfe

cat ../results/eco_3_nc000913_2_cv_1.res ../results/eco_3_nc000913_2_cv_2.res ../results/eco_3_nc000913_2_cv_3.res ../results/eco_3_nc000913_2_cv_4.res ../results/eco_3_nc000913_2_cv_5.res > ../results/eco_3_nc000913_2_cv.res

python ../lib/learn_stats.py ../results/eco_3_nc000913_2_cv.res gs > ../learn_stats/eco_3_nc000913_2_cv.gs

python ../lib/learn_stats.py ../results/eco_3_nc000913_2_cv.res vfe > ../learn_stats/eco_3_nc000913_2_cv.vfe


cat ../results/i3pmc_3_nc000913_2_cv_1.res ../results/i3pmc_3_nc000913_2_cv_2.res ../results/i3pmc_3_nc000913_2_cv_3.res ../results/i3pmc_3_nc000913_2_cv_4.res ../results/i3pmc_3_nc000913_2_cv_5.res > ../results/i3pmc_3_nc000913_2_cv.res

python ../lib/learn_stats.py ../results/i3pmc_3_nc000913_2_cv.res gs > ../learn_stats/i3pmc_3_nc000913_2_cv.gs

python ../lib/learn_stats.py ../results/i3pmc_3_nc000913_2_cv.res vfe > ../learn_stats/i3pmc_3_nc000913_2_cv.vfe

cat ../results/mc5_3_nc000913_2_cv_1.res ../results/mc5_3_nc000913_2_cv_2.res ../results/mc5_3_nc000913_2_cv_3.res ../results/mc5_3_nc000913_2_cv_4.res ../results/mc5_3_nc000913_2_cv_5.res > ../results/mc5_3_nc000913_2_cv.res

python ../lib/learn_stats.py ../results/mc5_3_nc000913_2_cv.res gs > ../learn_stats/mc5_3_nc000913_2_cv.gs

python ../lib/learn_stats.py ../results/mc5_3_nc000913_2_cv.res vfe > ../learn_stats/mc5_3_nc000913_2_cv.vfe

cat ../results/mm_3_nc000913_2_cv_1.res ../results/mm_3_nc000913_2_cv_2.res ../results/mm_3_nc000913_2_cv_3.res ../results/mm_3_nc000913_2_cv_4.res ../results/mm_3_nc000913_2_cv_5.res > ../results/mm_3_nc000913_2_cv.res

python ../lib/learn_stats.py ../results/mm_3_nc000913_2_cv.res gs > ../learn_stats/mm_3_nc000913_2_cv.gs

python ../lib/learn_stats.py ../results/mm_3_nc000913_2_cv.res vfe > ../learn_stats/mm_3_nc000913_2_cv.vfe



