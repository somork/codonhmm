#!/bin/sh

sed s/model/aa/g ../lib/model_get_stuff_from_lo.sh > ./aa_get_stuff_from_lo.sh
chmod u+x ./aa_get_stuff_from_lo.sh

sed s/model/eco/g ../lib/model_get_stuff_from_lo.sh > ./eco_get_stuff_from_lo.sh
chmod u+x ./eco_get_stuff_from_lo.sh

sed s/model/i3pmc/g ../lib/model_get_stuff_from_lo.sh > ./i3pmc_get_stuff_from_lo.sh
chmod u+x ./i3pmc_get_stuff_from_lo.sh

sed s/model/mc5/g ../lib/model_get_stuff_from_lo.sh > ./mc5_get_stuff_from_lo.sh
chmod u+x ./mc5_get_stuff_from_lo.sh

sed s/model/mm/g ../lib/model_get_stuff_from_lo.sh > ./mm_get_stuff_from_lo.sh
chmod u+x ./mm_get_stuff_from_lo.sh





