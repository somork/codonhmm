#!/bin/sh


sed s/model/mc5_a/g ../scripts/concat_model_viterbi.sh > ../scripts/concat_mc5_adph_viterbi.sh
chmod u+x concat_mc5_adph_viterbi.sh
../scripts/concat_mc5_adph_viterbi.sh

sed s/model/mm_a/g ../scripts/concat_model_viterbi.sh > ../scripts/concat_mm_adph_viterbi.sh
chmod u+x concat_mm_adph_viterbi.sh
../scripts/concat_mm_adph_viterbi.sh

sed s/model/i3pmc_a/g ../scripts/concat_model_viterbi.sh > ../scripts/concat_i3pmc_adph_viterbi.sh
chmod u+x concat_i3pmc_adph_viterbi.sh
../scripts/concat_i3pmc_adph_viterbi.sh

sed s/model/aa_a/g ../scripts/concat_model_viterbi.sh > ../scripts/concat_aa_adph_viterbi.sh
chmod u+x concat_aa_adph_viterbi.sh
../scripts/concat_aa_adph_viterbi.sh

sed s/model/eco_a/g ../scripts/concat_model_viterbi.sh > ../scripts/concat_eco_adph_viterbi.sh
chmod u+x concat_eco_adph_viterbi.sh
../scripts/concat_eco_adph_viterbi.sh




