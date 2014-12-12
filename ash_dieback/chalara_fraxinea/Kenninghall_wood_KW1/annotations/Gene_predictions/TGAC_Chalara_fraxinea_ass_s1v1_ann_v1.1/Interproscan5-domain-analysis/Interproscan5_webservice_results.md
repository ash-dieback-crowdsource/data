Protein Annotation using Interproscan5 webservice
==============================================================
#### Date: 2013 November 25
## Introduction

Aim is to analyze the  predicted proteins for known domains and annotations

## Methods

The protein sequences were submitted to the [InterPRO5 webservice](http://www.ebi.ac.uk/Tools/webservices/services/pfa/iprscan5_rest) 
as explained [at my github page](https://github.com/shyamrallapalli/analysis_scripts/blob/master/Interproscan5_webservice/Interproscan5_webservice.md)

It was found that following 36 proteins have premature stop codon in their predictions

|List|
|:-------------------------:|
| CHAFR746836.1.1_0001390.1 |
| CHAFR746836.1.1_0003330.1 |
| CHAFR746836.1.1_0007600.1 |
| CHAFR746836.1.1_0008040.1 |
| CHAFR746836.1.1_0010840.1 |
| CHAFR746836.1.1_0014880.1 |
| CHAFR746836.1.1_0016010.1 |
| CHAFR746836.1.1_0022680.1 |
| CHAFR746836.1.1_0026500.1 |
| CHAFR746836.1.1_0029560.2 |
| CHAFR746836.1.1_0032870.1 |
| CHAFR746836.1.1_0032870.2 |
| CHAFR746836.1.1_0034390.1 |
| CHAFR746836.1.1_0034730.1 |
| CHAFR746836.1.1_0036790.1 |
| CHAFR746836.1.1_0037700.1 |
| CHAFR746836.1.1_0038110.1 |
| CHAFR746836.1.1_0041810.1 |
| CHAFR746836.1.1_0043910.1 |
| CHAFR746836.1.1_0064010.1 |
| CHAFR746836.1.1_0066120.1 |
| CHAFR746836.1.1_0069450.1 |
| CHAFR746836.1.1_0070510.1 |
| CHAFR746836.1.1_0070890.1 |
| CHAFR746836.1.1_0071020.1 |
| CHAFR746836.1.1_0071820.1 |
| CHAFR746836.1.1_0072400.1 |
| CHAFR746836.1.1_0072570.1 |
| CHAFR746836.1.1_0077930.1 |
| CHAFR746836.1.1_0083600.1 |
| CHAFR746836.1.1_0086990.1 |
| CHAFR746836.1.1_0087910.1 |
| CHAFR746836.1.1_0091670.1 |
| CHAFR746836.1.1_0093700.1 |
| CHAFR746836.1.1_0095570.1 |
| CHAFR746836.1.1_0099970.1 | 


[the 36 protein sequences](truncated-36-proteins.faa) were truncated till the stop codon and used for protein domain search

For proteins with Gene Ontology and PFAM domains, entries were appended to the attributes of gene feature with following terms:
`Ontology_term` `ontology_term_description` `PFAM` and `PFAM_description`

Currnet [Chalara_fraxinea_ass_s1v1_ann_v1.1.gene_domains.gff] (Chalara_fraxinea_ass_s1v1_ann_v1.1.gene_domains.gff) from this analysis replaces [previous gff with GO ids](https://github.com/ash-dieback-crowdsource/data/blob/bb7b68bd8a20cbf542a88f9a47340cfd2302cd7f/ash_dieback/chalara_fraxinea/Kenninghall_wood_KW1/annotations/Gene_predictions/TGAC_Chalara_fraxinea_ass_s1v1_ann_v1.1/Chalara_fraxinea_ass_s1v1_ann_v1.1.gene_goids.gff)

#### Date: 2014 December 12
### Update

As the gff file created [Chalara_fraxinea_ass_s1v1_ann_v1.1.gene_domains.gff] (Chalara_fraxinea_ass_s1v1_ann_v1.1.gene_domains.gff) in this folder is the same as the [Chalara_fraxinea_ass_s1v1_ann_v1.1.gene.gff](../Chalara_fraxinea_ass_s1v1_ann_v1.1.gene.gff) file in the `TGAC_Chalara_fraxinea_ass_s1v1_ann_v1.1` folder, with added GO and PFAM information for respective genes; I have now replaced the original `Chalara_fraxinea_ass_s1v1_ann_v1.1.gene.gff` file with updated domain information file