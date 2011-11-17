#!/bin/sh

python ../lib/dat_to_lens_hist.py ../data/nc000913_2_v.dat ../data/nc000913_2_v.dat 100 x > ../hist/x_nc000913_2_v.his

python ../lib/dat_to_lens_hist.py ../data/nc000913_2_v.dat ../data/nc000913_2_v.dat 100 y > ../hist/nc000913_2_v.his

python ../lib/dat_to_lens_hist.py ../samples/aa_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/aa_2413.his

python ../lib/dat_to_lens_hist.py ../samples/aa_adph_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/aa_adph_2413.his

python ../lib/dat_to_lens_hist.py ../samples/eco_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/eco_2413.his

python ../lib/dat_to_lens_hist.py ../samples/eco_adph_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/eco_adph_2413.his

python ../lib/dat_to_lens_hist.py ../samples/i3pmc_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/i3pmc_2413.his

python ../lib/dat_to_lens_hist.py ../samples/i3pmc_adph_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/i3pmc_adph_2413.his

python ../lib/dat_to_lens_hist.py ../samples/mc5_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/mc5_2413.his

python ../lib/dat_to_lens_hist.py ../samples/mc5_adph_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/mc5_adph_2413.his

python ../lib/dat_to_lens_hist.py ../samples/mm_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/mm_2413.his

python ../lib/dat_to_lens_hist.py ../samples/mm_adph_2413.sample ../data/nc000913_2_v.dat 100 y > ../hist/mm_adph_2413.his







