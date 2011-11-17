#!/bin/sh

sed s/model/aa/g ../lib/model_log_odds.sh > ./aa_log_odds.sh
chmod u+x ./aa_log_odds.sh

sed s/model/eco/g ../lib/model_log_odds.sh > ./eco_log_odds.sh
chmod u+x ./eco_log_odds.sh

sed s/model/i3pmc/g ../lib/model_log_odds.sh > ./i3pmc_log_odds.sh
chmod u+x ./i3pmc_log_odds.sh

sed s/model/mc5/g ../lib/model_log_odds.sh > ./mc5_log_odds.sh
chmod u+x ./mc5_log_odds.sh

sed s/model/mm/g ../lib/model_log_odds.sh > ./mm_log_odds.sh
chmod u+x ./mm_log_odds.sh





