
#!/bin/sh

python ../lib/make_die_5.py ../data/nc000964_v.dat

prism -g "prism('../lib/die_5.psm'), get" > ../tmp/tmp

python ../lib/cross_val_generator.py ../data/nc000964_v.dat ../tmp/tmp 

