#!/bin/sh

cat ../results/aa_nc000913_2_vecocyc.res ../results/eco_nc000913_2_vecocyc.res ../results/i3pmc_nc000913_2_vecocyc.res ../results/mc5_nc000913_2_vecocyc.res ../results/mm_nc000913_2_vecocyc.res ../results/aa_3_nc000913_2_vecocyc.res ../results/eco_3_nc000913_2_vecocyc.res ../results/i3pmc_3_nc000913_2_vecocyc.res ../results/mc5_3_nc000913_2_vecocyc.res ../results/mm_3_nc000913_2_vecocyc.res ../results/aa_adph_nc000913_2_vecocyc.res ../results/eco_adph_nc000913_2_vecocyc.res ../results/i3pmc_adph_nc000913_2_vecocyc.res ../results/mc5_adph_nc000913_2_vecocyc.res ../results/mm_adph_nc000913_2_vecocyc.res > ../results/combined_results

python ../lib/learn_table.py ../results/combined_results > ../tables/learn_table 

