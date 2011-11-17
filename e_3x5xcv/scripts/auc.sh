#!/bin/sh

sed s/model/aa/g ../lib/model_auc.sh > aa_auc.sh
chmod u+x aa_auc.sh
./aa_auc.sh

sed s/model/eco/g ../lib/model_auc.sh > eco_auc.sh
chmod u+x eco_auc.sh
./eco_auc.sh

sed s/model/i3pmc/g ../lib/model_auc.sh > i3pmc_auc.sh
chmod u+x i3pmc_auc.sh
./i3pmc_auc.sh

sed s/model/mc5/g ../lib/model_auc.sh > mc5_auc.sh
chmod u+x mc5_auc.sh
./mc5_auc.sh

sed s/model/mm/g ../lib/model_auc.sh > mm_auc.sh
chmod u+x mm_auc.sh
./mm_auc.sh


