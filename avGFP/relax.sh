#!/bin/bash

# RosettaCM.sh
# Test RosettaCM on CHTC

cat 2021_database_a* > database.tar
tar -xf database.tar
chmod +x 2021_rosetta_scripts.static.linuxgccrelease
chmod +x 2021_relax.static.linuxgccrelease
cd mutation_$1
cd Prepare_Relax
bash run_step_1.sh
cd ../Mutate
bash run_step_2.sh
cd ../..
rm 2021_*
rm -r database
rm database.tar
exit
