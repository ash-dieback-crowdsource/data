module load genometools
gt -version
gt suffixerator  -tis -suf -lcp -des -dna  -db ../../../assemblies/gDNA/KW1_assembly_version1/Chalara_fraxinea_TGAC_s1v1_scaffolds.fa -indexname Chalara_fraxinea_TGAC_s1v1_scaffolds
gt ltrharvest -index Chalara_fraxinea_TGAC_s1v1_scaffolds -out Chalara_fraxinea_TGAC_s1v1_scaffolds.ltrharvest.fa -gff3 Chalara_fraxinea_TGAC_s1v1_scaffolds.ltrharvest.gff3
