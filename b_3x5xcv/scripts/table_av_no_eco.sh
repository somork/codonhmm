#!/bin/sh

cat ../auc/aa_3_iid_nc000964_cv.auc ../auc/aa_3_iid_nc000964_cv.auc ../auc/i3pmc_3_iid_nc000964_cv.auc ../auc/mc5_3_iid_nc000964_cv.auc ../auc/mm_3_iid_nc000964_cv.auc > ../auc/cv_auc

cat ../cm/aa_3_iid_nc000964_cv_1.cm ../cm/aa_3_iid_nc000964_cv_2.cm ../cm/aa_3_iid_nc000964_cv_3.cm ../cm/aa_3_iid_nc000964_cv_4.cm ../cm/aa_3_iid_nc000964_cv_5.cm > ../cm/aa_cm
cat ../cm/eco_3_iid_nc000964_cv_1.cm ../cm/eco_3_iid_nc000964_cv_2.cm ../cm/eco_3_iid_nc000964_cv_3.cm ../cm/eco_3_iid_nc000964_cv_4.cm ../cm/eco_3_iid_nc000964_cv_5.cm > ../cm/eco_cm
cat ../cm/i3pmc_3_iid_nc000964_cv_1.cm ../cm/i3pmc_3_iid_nc000964_cv_2.cm ../cm/i3pmc_3_iid_nc000964_cv_3.cm ../cm/i3pmc_3_iid_nc000964_cv_4.cm ../cm/i3pmc_3_iid_nc000964_cv_5.cm > ../cm/i3pmc_cm
cat ../cm/mc5_3_iid_nc000964_cv_1.cm ../cm/mc5_3_iid_nc000964_cv_2.cm ../cm/mc5_3_iid_nc000964_cv_3.cm ../cm/mc5_3_iid_nc000964_cv_4.cm ../cm/mc5_3_iid_nc000964_cv_5.cm > ../cm/mc5_cm
cat ../cm/mm_3_iid_nc000964_cv_1.cm ../cm/mm_3_iid_nc000964_cv_2.cm ../cm/mm_3_iid_nc000964_cv_3.cm ../cm/mm_3_iid_nc000964_cv_4.cm ../cm/mm_3_iid_nc000964_cv_5.cm > ../cm/mm_cm


cat ../cm/aa_cm ../cm/aa_cm ../cm/i3pmc_cm ../cm/mc5_cm ../cm/mm_cm > ../cm/cv_cm

python ../lib/tables_av.py ../cm/cv_cm ../auc/cv_auc > ../tables/cv_table_no_eco


