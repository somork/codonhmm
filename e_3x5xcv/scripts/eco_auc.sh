#!/bin/sh

(python ../lib/auc.py ../roc/eco_3_iid_nc000913_2_cv_1.tpr ../roc/eco_3_iid_nc000913_2_cv_1.fpr > ../auc/eco_3_iid_nc000913_2_cv_1.auc &)
(python ../lib/auc.py ../roc/eco_3_iid_nc000913_2_cv_2.tpr ../roc/eco_3_iid_nc000913_2_cv_2.fpr > ../auc/eco_3_iid_nc000913_2_cv_2.auc &)
(python ../lib/auc.py ../roc/eco_3_iid_nc000913_2_cv_3.tpr ../roc/eco_3_iid_nc000913_2_cv_3.fpr > ../auc/eco_3_iid_nc000913_2_cv_3.auc &)
(python ../lib/auc.py ../roc/eco_3_iid_nc000913_2_cv_4.tpr ../roc/eco_3_iid_nc000913_2_cv_4.fpr > ../auc/eco_3_iid_nc000913_2_cv_4.auc &)
(python ../lib/auc.py ../roc/eco_3_iid_nc000913_2_cv_5.tpr ../roc/eco_3_iid_nc000913_2_cv_5.fpr > ../auc/eco_3_iid_nc000913_2_cv_5.auc &)











