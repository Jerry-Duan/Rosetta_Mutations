### Prepare structures for relax

python2 ../../2021_clean_pdb_keep_ligand.py 1ema.pdb -ignorechain

### Relax with all-heavy-atom constraints: Short protocol (recommended)

../../2021_relax.static.linuxgccrelease -s 1ema.pdb_00.pdb @flags2 > relax.log
