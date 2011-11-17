#!/bin/sh

cat ../results/aa_a_nc000964_cv_1.res ../results/aa_a_nc000964_cv_2.res ../results/aa_a_nc000964_cv_3.res ../results/aa_a_nc000964_cv_4.res ../results/aa_a_nc000964_cv_5.res > ../results/aa_a_nc000964_cv.res

python learn_stats.py ../results/aa_a_nc000964_cv.res gs > ../learn_stats/aa_a_nc000964_cv.gs

python learn_stats.py ../results/aa_a_nc000964_cv.res vfe > ../learn_stats/aa_a_nc000964_cv.vfe

cat ../results/eco_a_nc000964_cv_1.res ../results/eco_a_nc000964_cv_2.res ../results/eco_a_nc000964_cv_3.res ../results/eco_a_nc000964_cv_4.res ../results/eco_a_nc000964_cv_5.res > ../results/eco_a_nc000964_cv.res

python learn_stats.py ../results/eco_a_nc000964_cv.res gs > ../learn_stats/eco_a_nc000964_cv.gs

python learn_stats.py ../results/eco_a_nc000964_cv.res vfe > ../learn_stats/eco_a_nc000964_cv.vfe


cat ../results/i3pmc_a_nc000964_cv_1.res ../results/i3pmc_a_nc000964_cv_2.res ../results/i3pmc_a_nc000964_cv_3.res ../results/i3pmc_a_nc000964_cv_4.res ../results/i3pmc_a_nc000964_cv_5.res > ../results/i3pmc_a_nc000964_cv.res

python learn_stats.py ../results/i3pmc_a_nc000964_cv.res gs > ../learn_stats/i3pmc_a_nc000964_cv.gs

python learn_stats.py ../results/i3pmc_a_nc000964_cv.res vfe > ../learn_stats/i3pmc_a_nc000964_cv.vfe

cat ../results/mc5_a_nc000964_cv_1.res ../results/mc5_a_nc000964_cv_2.res ../results/mc5_a_nc000964_cv_3.res ../results/mc5_a_nc000964_cv_4.res ../results/mc5_a_nc000964_cv_5.res > ../results/mc5_a_nc000964_cv.res

python learn_stats.py ../results/mc5_a_nc000964_cv.res gs > ../learn_stats/mc5_a_nc000964_cv.gs

python learn_stats.py ../results/mc5_a_nc000964_cv.res vfe > ../learn_stats/mc5_a_nc000964_cv.vfe

cat ../results/mm_a_nc000964_cv_1.res ../results/mm_a_nc000964_cv_2.res ../results/mm_a_nc000964_cv_3.res ../results/mm_a_nc000964_cv_4.res ../results/mm_a_nc000964_cv_5.res > ../results/mm_a_nc000964_cv.res

python learn_stats.py ../results/mm_a_nc000964_cv.res gs > ../learn_stats/mm_a_nc000964_cv.gs

python learn_stats.py ../results/mm_a_nc000964_cv.res vfe > ../learn_stats/mm_a_nc000964_cv.vfe



