#!/bin/sh

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo info > ../cm/i3pmc_3_iid_nc000964_cv_1.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo tpr > ../roc/i3pmc_3_iid_nc000964_cv_1.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_1.lo fpr > ../roc/i3pmc_3_iid_nc000964_cv_1.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_2.lo info > ../cm/i3pmc_3_iid_nc000964_cv_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_2.lo tpr > ../roc/i3pmc_3_iid_nc000964_cv_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_2.lo fpr > ../roc/i3pmc_3_iid_nc000964_cv_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_3.lo info > ../cm/i3pmc_3_iid_nc000964_cv_3.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_3.lo tpr > ../roc/i3pmc_3_iid_nc000964_cv_3.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_3.lo fpr > ../roc/i3pmc_3_iid_nc000964_cv_3.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_4.lo info > ../cm/i3pmc_3_iid_nc000964_cv_4.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_4.lo tpr > ../roc/i3pmc_3_iid_nc000964_cv_4.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_4.lo fpr > ../roc/i3pmc_3_iid_nc000964_cv_4.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_5.lo info > ../cm/i3pmc_3_iid_nc000964_cv_5.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_5.lo tpr > ../roc/i3pmc_3_iid_nc000964_cv_5.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_3_iid_nc000964_cv_5.lo fpr > ../roc/i3pmc_3_iid_nc000964_cv_5.fpr &)








