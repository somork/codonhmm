#!/bin/sh

(python ../lib/get_stuff_from_lo.py ../log_odds/aa_adph_iid_nc000913_2.lo info > ../cm/aa_adph_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/aa_adph_iid_nc000913_2.lo tpr > ../roc/aa_adph_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/aa_adph_iid_nc000913_2.lo fpr > ../roc/aa_adph_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/eco_adph_iid_nc000913_2.lo info > ../cm/eco_adph_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/eco_adph_iid_nc000913_2.lo tpr > ../roc/eco_adph_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/eco_adph_iid_nc000913_2.lo fpr > ../roc/eco_adph_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_adph_iid_nc000913_2.lo info > ../cm/i3pmc_adph_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_adph_iid_nc000913_2.lo tpr > ../roc/i3pmc_adph_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/i3pmc_adph_iid_nc000913_2.lo fpr > ../roc/i3pmc_adph_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_adph_iid_nc000913_2.lo info > ../cm/mc5_adph_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_adph_iid_nc000913_2.lo tpr > ../roc/mc5_adph_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mc5_adph_iid_nc000913_2.lo fpr > ../roc/mc5_adph_iid_nc000913_2.fpr &)

(python ../lib/get_stuff_from_lo.py ../log_odds/mm_adph_iid_nc000913_2.lo info > ../cm/mm_adph_iid_nc000913_2.cm &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mm_adph_iid_nc000913_2.lo tpr > ../roc/mm_adph_iid_nc000913_2.tpr &)
(python ../lib/get_stuff_from_lo.py ../log_odds/mm_adph_iid_nc000913_2.lo fpr > ../roc/mm_adph_iid_nc000913_2.fpr &)




