# Rosetta_Mutations
The Rosetta package is 2020.50 version.
The protocal consists of two steps.
  1. relax the experimental structure. This step can replace the clean_pdb procedure. The relaxed pdb strill contains non-AA compounds. Index of residues initialized here.
  2. make mutations on the relaxed structure. This step is greedily splitted into two steps.
    2.1 make mutations on the original structure. The optimization cycle is limited here. 2000 -> 100
    2.2 relax the mutated structure. The optimization cysle is set to default here.
      just repacking around the mutated residues. 10 A here.
      the repeats value (default 5) is not enough. The optimal value is depend on the number of rotamers, the number of residue to be repacked. likly 20 residues around each mutation. It feels like 10*n is fine. n means the number of mutations.
      NOTE! Mightbe an error. The number of repeats doesn't give much difference in results. In many cases, the result structures are identical. 
