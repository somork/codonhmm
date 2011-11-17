#!/bin/sh

(python ../lib/get_stuff_from_lo.py ../log_odds/aa_3_iid_nc000964_cv_1.lo info > ../cm/aa_3_iid_nc000964_cv_1.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/aa_3_iid_nc000964_cv_1.lo tpr > ../roc/aa_3_iid_nc000964_cv_1.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/aa_3_iid_nc000964_cv_1.lo fpr > ../roc/aa_3_iid_nc000964_cv_1.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/eco_3_iid_nc000964_cv_1.lo info > ../cm/eco_3_iid_nc000964_cv_1.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/eco_3_iid_nc000964_cv_1.lo tpr > ../roc/eco_3_iid_nc000964_cv_1.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/eco_3_iid_nc000964_cv_1.lo fpr > ../roc/eco_3_iid_nc000964_cv_1.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo info > ../cm/i3pmc_3_iid_nc000964_cv_1.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo tpr > ../roc/i3pmc_3_iid_nc000964_cv_1.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo fpr > ../roc/i3pmc_3_iid_nc000964_cv_1.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_3_iid_nc000964_cv_1.lo info > ../cm/mc5_3_iid_nc000964_cv_1.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_3_iid_nc000964_cv_1.lo tpr > ../roc/mc5_3_iid_nc000964_cv_1.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_3_iid_nc000964_cv_1.lo fpr > ../roc/mc5_3_iid_nc000964_cv_1.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/mm_3_iid_nc000964_cv_1.lo info > ../cm/mm_3_iid_nc000964_cv_1.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mm_3_iid_nc000964_cv_1.lo tpr > ../roc/mm_3_iid_nc000964_cv_1.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mm_3_iid_nc000964_cv_1.lo fpr > ../roc/mm_3_iid_nc000964_cv_1.fpr &)




