#!/bin/sh


./concat_iid_viterbi.sh

sed s/iid/mc5/g ./concat_iid_viterbi.sh > ./concat_mc5_viterbi.sh
chmod u+x concat_mc5_viterbi.sh
./concat_mc5_viterbi.sh

sed s/iid/mm/g ./concat_iid_viterbi.sh > ./concat_mm_viterbi.sh
chmod u+x concat_mm_viterbi.sh
./concat_mm_viterbi.sh

sed s/iid/i3pmc/g ./concat_iid_viterbi.sh > ./concat_i3pmc_viterbi.sh
chmod u+x concat_i3pmc_viterbi.sh
./concat_i3pmc_viterbi.sh

sed s/iid/aa/g ./concat_iid_viterbi.sh > ./concat_aa_viterbi.sh
chmod u+x concat_aa_viterbi.sh
./concat_aa_viterbi.sh

sed s/iid/eco/g ./concat_iid_viterbi.sh > ./concat_eco_viterbi.sh
chmod u+x concat_eco_viterbi.sh
./concat_eco_viterbi.sh




