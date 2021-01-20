cp ../Prepare_Relax/*.pdb_00_0001.pdb *_relaxed.pdb
../../2021_rosetta_scripts.static.linuxgccrelease @flags_mutate > mutate.log
mv score.sc mutate.sc
../../2021_rosetta_scripts.static.linuxgccrelease @flags_relax > relax.log

