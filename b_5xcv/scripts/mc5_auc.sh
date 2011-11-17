#!/bin/sh

(python ../lib/auc.py ../roc/mc5_iid_nc000964_cv_1.tpr ../roc/mc5_iid_nc000964_cv_1.fpr > ../auc/mc5_iid_nc000964_cv_1.auc &)
(python ../lib/auc.py ../roc/mc5_iid_nc000964_cv_2.tpr ../roc/mc5_iid_nc000964_cv_2.fpr > ../auc/mc5_iid_nc000964_cv_2.auc &)
(python ../lib/auc.py ../roc/mc5_iid_nc000964_cv_3.tpr ../roc/mc5_iid_nc000964_cv_3.fpr > ../auc/mc5_iid_nc000964_cv_3.auc &)
(python ../lib/auc.py ../roc/mc5_iid_nc000964_cv_4.tpr ../roc/mc5_iid_nc000964_cv_4.fpr > ../auc/mc5_iid_nc000964_cv_4.auc &)
(python ../lib/auc.py ../roc/mc5_iid_nc000964_cv_5.tpr ../roc/mc5_iid_nc000964_cv_5.fpr > ../auc/mc5_iid_nc000964_cv_5.auc &)











