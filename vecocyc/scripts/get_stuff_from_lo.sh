#!/bin/sh

(python ../lib/get_stuff_from_lo.py ../log_odds/aa_iid_nc000913_2.lo info > ../cm/aa_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/aa_iid_nc000913_2.lo tpr > ../roc/aa_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/aa_iid_nc000913_2.lo fpr > ../roc/aa_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/eco_iid_nc000913_2.lo info > ../cm/eco_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/eco_iid_nc000913_2.lo tpr > ../roc/eco_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/eco_iid_nc000913_2.lo fpr > ../roc/eco_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_iid_nc000913_2.lo info > ../cm/i3pmc_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_iid_nc000913_2.lo tpr > ../roc/i3pmc_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_iid_nc000913_2.lo fpr > ../roc/i3pmc_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_iid_nc000913_2.lo info > ../cm/mc5_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_iid_nc000913_2.lo tpr > ../roc/mc5_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_iid_nc000913_2.lo fpr > ../roc/mc5_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/mm_iid_nc000913_2.lo info > ../cm/mm_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mm_iid_nc000913_2.lo tpr > ../roc/mm_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mm_iid_nc000913_2.lo fpr > ../roc/mm_iid_nc000913_2.fpr &)




