---
layout: post2
permalink: /pathway_and_network_analysis_2015/
title: Pathway and Network Analysis 2015 Student Page
header1: Pathway and Network Analysis of Omics Data 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Laptop Setup Instructions
-------------------------

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions\_Pathways](Laptop_Setup_Instructions_Pathways "wikilink")

Pre-Workshop Tutorials
----------------------

1) <b>Cytoscape Preparation tutorials:</b> Complete the introductory tutorial to Cytoscape: <http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape3>

-   Introduction to Cytoscape3 - User Interface
-   Introduction to Cytoscape3 - Welcome Screen
-   Filtering and Editing in Cytoscape 3

<hr>
Pre-Workshop Readings
---------------------

![](pdf.gif "fig:pdf.gif") [MEME-ChIP: Motif Analysis of Large Datasets.pdf](Media:PMID21486936.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") The GeneMANIA prediction server: biological network integration for gene prioritization and predicting gene function [PMID20576703.pdf](Media:PMID20576703.pdf "wikilink")

![](pdf.gif "fig:pdf.gif") GeneMANIA Prediction Server 2013 Update [PMC3692113.pdf](Media:PMC3692113.pdf "wikilink")

![](pdf.gif "fig:pdf.gif") How to visually interpret biological data using networks [PMID19816451.pdf](Media:PMID19816451.pdf "wikilink")

![](pdf.gif "fig:pdf.gif") g:Profiler—a web-based toolset for functional profiling of gene lists from large-scale experiments [PMC1933153.pdf](Media:PMC1933153.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") g:Profiler—a web server for functional interpretation of gene lists (2011 update) [PMID21646343.pdf](Media:PMID21646343.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Gene set enrichment analysis (GSEA).pdf](Media:PMID16199517.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") Expression Data Analysis with Reactome [ReactomePaper.pdf](Media:Expression_Data_Analysis_with_Reactome.pdf "wikilink")

<hr>
Day 1
-----

### Welcome

<font color="green">*Faculty: Michelle Brazas*</font>

<hr>
Day 1
-----

<hr>
### Module 1: Introduction to Pathway and Network Analysis

<font color="green">*Faculty: Gary Bader*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module1.pdf](Media:Pathways2015_Module1.pdf "wikilink")
**Data Set:**
![](txt.gif "fig:txt.gif") [module1YeastGenes.txt](Media:_module1YeastGenes.txt "wikilink")

**Links:**

`* The Synergizer `[`1`](http://llama.med.harvard.edu/synergizer/translate/)` - identifier mapping`
`* Ensembl BioMart `[`2`](http://www.ensembl.org/index.html)` - (in menu bar, select the BioMart tab) eukaryotic gene query system`
`* ID Conversion Tool: gConvert `[`3`](http://biit.cs.ut.ee/gprofiler/gconvert.cgi)`  - identifier mapping`
`* Gene Ontology `[`4`](http://www.geneontology.org/)` - gene annotation`
`* Cytoscape `[`5`](http://www.cytoscape.org/)` - network visualization and analysis`

<hr>
### Module 2: Finding over-represented pathways in gene lists

<font color="green">*Faculty: Quaid Morris*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module2.pdf](Media:Pathways2015_Module2.pdf "wikilink")
**Lab Practical:** Gene-set enrichment analyses using GSEA and g:Profiler
<font color="green">*Faculty: Veronique Voisin*</font>
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module2\_LabSlides.pdf](Media:‎Pathways2015_Module2_LabSlides.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module2\_LabExercise.pdf](Media:‎Pathways2015_Module2_LabExercise.pdf "wikilink")
**Data Set:**
\* GSEA (exercise 1)

` * `![`txt.gif`](txt.gif "fig:txt.gif")` `[`MCF7_Expression_matrix.gct`](Media:_MCF7_Expression_matrix.gct "wikilink")
` * `![`txt.gif`](txt.gif "fig:txt.gif")` `[`Human_GO_AllPathways.gmt`](Media:_Human_GO_AllPathways.gmt "wikilink")
` * `![`txt.gif`](txt.gif "fig:txt.gif")` `[`MCF7_groups.cls`](Media:_MCF7_groups.cls "wikilink")

`* g:Profiler (exercise 2)`
` * `![`txt.gif`](txt.gif "fig:txt.gif")` `[`24hr_topgenes.txt`](Media:_24hr_topgenes.txt "wikilink")

**Launching GSEA:**
\* ![](txt.gif "fig:txt.gif") [GSEA\_installation.pdf](Media:_GSEA_installation.pdf "wikilink")

` command line: java -Xmx2G -jar gsea2-2.2.0.jar`

**Additional Links:**

`* GSEA `[`6`](http://www.baderlab.org/CancerStemCellProject/VeroniqueVoisin/AdditionalResources/GSEA)` - help on format, installation, method,...`
`* g:Profiler `[`7`](http://biit.cs.ut.ee/gprofiler/)
`* DAVID `[`8`](http://david.abcc.ncifcrf.gov/)` - Enrichment Analysis for simple gene lists (jacknifed Fisher's Exact Test)`
`* ConceptGen `[`9`](http://conceptgen.ncibi.org/core/conceptGen/index.jsp)` - Enrichment Analysis for simple gene lists (Fisher's Exact Test)`
`* GSEA `[`10`](http://www.broad.mit.edu/gsea/)` - Enrichment Analysis for ranked gene lists`
`* Other Enrichment Analysis tools for simple gene lists: Funspec `[`11`](http://funspec.med.utoronto.ca/)`, GoMiner `[`12`](http://discover.nci.nih.gov/gominer/)
`* List of 68 Enrichment Tools `[`13`](http://www.nature.com/nprot/journal/v4/n1/extref/nprot.2008.211-S1.xls)` available as of 2008`

<hr>
### Module 3: Cytoscape Intro, Demo and Enrichment Maps

<font color="green">*Faculty: Gary Bader*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Pathways\_2015\_Module3-Part1.pdf](Media:_Pathways_2015_Module3-Part1.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways\_2015\_Module3-Part2.pdf](Media:_Pathways_2015_Module3-Part3.pdf "wikilink")

**Lab Practical:** Creating an enrichment map from GSEA and g:Profiler results

`* `[`http://baderlab.org/Software/EnrichmentMap`](http://baderlab.org/Software/EnrichmentMap)

`* link to install the latest available version of enrichment map: `[`http://baderlab.org/Software/EnrichmentMap#Development_Versions`](http://baderlab.org/Software/EnrichmentMap#Development_Versions)

` * Exercise 1: generate an enrichment map using GSEA results. Follow this protocol:`
` `[`http://baderlab.org/Software/EnrichmentMap/Tutorial#Step_2:_Generate_Enrichment_Map_with_GSEA_Output`](http://baderlab.org/Software/EnrichmentMap/Tutorial#Step_2:_Generate_Enrichment_Map_with_GSEA_Output)

` * Exercise 2: generate an enrichment map using g:Profiler results. Follow this protocol:`
` `[`http://baderlab.org/Software/EnrichmentMap/GProfilerTutorial#Step_2:_Generate_Enrichment_Map_with_g:Profiler_Output`](http://baderlab.org/Software/EnrichmentMap/GProfilerTutorial#Step_2:_Generate_Enrichment_Map_with_g:Profiler_Output)

**Data Sets:**

-   Dataset Exercise 1 (download the folder, unzip it):

` *`![`txt.gif`](txt.gif "fig:txt.gif")`  `[`EM_EstrogenMCF7_GSEAresults.zip`](Media:EM_EstrogenMCF7_GSEAresults.zip "wikilink")

-   Dataset Exercise 2:

` *`![`txt.gif`](txt.gif "fig:txt.gif")`  `[`gprofiler_results_12hours.txt`](Media:gprofiler_results_12hours.txt "wikilink")
` *`![`txt.gif`](txt.gif "fig:txt.gif")`  `[`hsapiens.NAME.gmt`](Media:hsapiens.NAME.gmt "wikilink")

**Result (back up files / cytoscape files):**
\* ![](txt.gif "fig:txt.gif") [ES12\_vs\_NT12\_GSEA\_cyto3.cys](Media:ES12_vs_NT12_GSEA_cyto3.cys "wikilink")

`* `![`txt.gif`](txt.gif "fig:txt.gif")`  `[`gprofiler_results_12hours.cys`](Media:gprofiler_results_12hours.cys "wikilink")

**Lab Practical optional:** Use your own data set.
**Programs Used:**
\* Cytoscape \[ <http://www.cytoscape.org/>\]

`* Open Tutorials for Cytoscape: `[`http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape`](http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape)
`Useful plugins:`
`* VistaClara - makes it easy to visualize gene expression data on networks`
`* Agilent Literature Search - extracts interactions from PubMed abstracts`
`* clusterMaker - provides multiple ways to cluster gene expression and networks`
`* BiNGO - provides over-representation analysis using Gene Ontology in Cytoscape - you can select genes in your network or provide a list of genes and see the enrichment results visually mapped to the Gene Ontology`
`* commandTool, coreCommands - used to control Cytoscape by a series of commands. E.g. automate the process: open network, layout network, save network as PDF. These plugins require Cytoscape 2.7`
`* jActiveModules - requires gene expression data over multiple samples (>3). Finds regions of a network where genes are active (e.g. differentially expressed) across multiple samples.`
`* Many more at `[`http://chianti.ucsd.edu/cyto_web/plugins/index.php`](http://chianti.ucsd.edu/cyto_web/plugins/index.php)

<hr>
### Integrated Assignment - Day 1

<font color="green">*Faculty: Veronique Voisin*</font>

![](pdf.gif "fig:pdf.gif") [Pathways2015\_part1\_IntegratedAssignment.pdf](Media:_Pathways2015_part1_IntegratedAssignment.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways2015\_part1\_IntegratedAssignmentAnswers.pdf](Media:_Pathways2015_part1_IntegratedAssignmentAnswers.pdf "wikilink")

**Input Data sets:**
\* [ Day5 All Integrated Assignment Files](Media:Day5_IntegratedAssignment.zip "wikilink")
\* ![](txt.gif "fig:txt.gif") [ Expression.txt](Media:Expression.txt "wikilink")

`* `![`txt.gif`](txt.gif "fig:txt.gif")` `[ `gem1033458993259_BE.txt`](Media:gem1033458993259_BE.txt "wikilink")
`* `![`txt.gif`](txt.gif "fig:txt.gif")` `[ `gem1047581616441_EAC.txt`](Media:gem1047581616441_EAC.txt "wikilink")
`* `![`txt.gif`](txt.gif "fig:txt.gif")` `[ `GeneSet1_BE.txt`](Media:GeneSet1_BE.txt "wikilink")
`* `![`txt.gif`](txt.gif "fig:txt.gif")` `[ `GeneList2_EAC.txt`](Media:GeneList2_EAC.txt "wikilink")
`* `![`txt.gif`](txt.gif "fig:txt.gif")` `[ `hsapiens.NAME.gmt`](Media:hsapiens.NAME.gmt "wikilink")

<hr>
Day 2
-----

<hr>
### Module 4: Depth on Pathway and Network Analysis

<font color="green">*Faculty: Lincoln Stein*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module4.pdf](Media:Pathways2015_Module4.pdf "wikilink")

**Lab Practical:**
<font color="green">*Faculty: Robin Haw*</font>
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module4\_LabSlides.pdf](Media:Pathways2015_Module4_LabSlides.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module4\_Lab.pdf](Media:Pathways2015_Module4_Lab.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module4\_LabAnswers.pdf](Media:Pathways2015_Module4_LabAnswers.pdf "wikilink")
**Data Sets:**
[ Module 4 Data Set](Media:Day2_Module4_DataSets.zip "wikilink")

![](txt.gif "fig:txt.gif")[ Demo file](Media:LAC_genelist.txt "wikilink")
![](txt.gif "fig:txt.gif")[ GBM gene list](Media:GBM_TCGA_GeneList.txt "wikilink")
![](txt.gif "fig:txt.gif")[ GBM gene-sample pair](Media:GBM_genesample.txt "wikilink")
![](txt.gif "fig:txt.gif")[OVCA TCGA MAF](Media:OVCA_TCGA_MAF.txt "wikilink")
![](txt.gif "fig:txt.gif")[OVCA TCGA clinical data](Media:OVCA_TCGA_Clinical.txt "wikilink")
![](txt.gif "fig:txt.gif")[ Breast Cancer Data](Media:NEJM_Expression_Data.zip "wikilink")
**Programs Used:**

` Reactome Website:  `[`14`](http://www.reactome.org)
` Reactome User Guide:  `[`15`](http://wiki.reactome.org/index.php/Usersguide)
` ReactomeFI User Guide : `[`16`](http://wiki.reactome.org/index.php/Reactome_FI_Cytoscape_Plugin)

**Papers:**
Clustering Algorithms : ![](pdf.gif "fig:pdf.gif") [Newman Clustering](Media:Newman_Clustering_2006.pdf "wikilink") and ![](pdf.gif "fig:pdf.gif") [Hotnet](Media:Vandin_PSB_2012.pdf "wikilink")
Reactome Website : ![](pdf.gif "fig:pdf.gif") [NAR paper](Media:Croft_NAR_2014.pdf "wikilink")
Nature Methods Perspectives Paper: ![](pdf.gif "fig:pdf.gif") [Nature Methods Perpsectives on Cancer Pathway Analysis.pdf](Media:Nature_Methods_Perspectives_Cancer_Pathway_Analysis-TO_SUBMIT-1May2014.pdf "wikilink")
Supplementary Materials: ![](pdf.gif "fig:pdf.gif") [Supplementary Materials.pdf](Media:Supplementary_Materials_CLEAN_Nature_Methods_Perspectives_Cancer_Pathway_Analysis-13Apr2014.pdf "wikilink")
**Links:**

<b>`Pathway and Interaction databases`</b>
`GO `[`17`](http://www.geneontology.org)
`KEGG `[`18`](http://www.genome.jp/kegg)
`Biocarta `[`19`](http://www.biocarta.com)
`Reactome `[`20`](http://reactome.org/)`  (Curated human pathways)`
`NCI/PID `[`21`](http://pid.nci.nih.gov/)
`Pathway Commons `[`22`](http://www.pathwaycommons.org/pc/)` (Aggregates pathways from multiple sources)`
`iRefWeb/iRefIndex `[`23`](http://wodaklab.org/iRefWeb/)` (Protein interactions)`
`>300 more at `[`http://www.pathguide.org/`](http://www.pathguide.org/)

<hr>
### Module 5: Gene Function Prediction

<font color="green">*Faculty: Quaid Morris*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_NYC\_Module5.pdf](Media:Pathways2015_Module5.pdf‎ "wikilink")

**Lab Practical:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module5\_LabSlides.pdf](Media:Pathways2015_Module5_LabSlides.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module5\_LabExercise.pdf](Media:Pathways2015_Module5_Lab.pdf "wikilink")
**Data Sets for GeneMANIA exercises:**
![](txt.gif "fig:txt.gif") [30\_prostate\_cancer\_genes.txt](Media:30_prostate_cancer_genes.txt "wikilink")
![](txt.gif "fig:txt.gif") [mixed\_gene\_list.txt](Media:mixed_gene_list.txt "wikilink")
![](txt.gif "fig:txt.gif") [CYB11B\_pearson\_correlation\_prostate.txt](Media:CYB11B_pearson_correlation_prostate.txt "wikilink")
**Links:**
<b>Tools for gene function prediction systems (using functional associations)</b>

`* GeneMANIA `[`24`](http://www.genemania.org/)` (or beta version `[`25`](http://beta.genemania.org/)`)`
`* STRING  `[`26`](http://string.embl.de/)
`* FunCoup `[`27`](http://funcoup.sbc.su.se/)` -- similar to STRING and GeneMANIA`
`* bioPIXIE `[`28`](http://pixie.princeton.edu/pixie/)` -- an early gene recommender system for yeast`
`* mouseNET `[`29`](http://mousenet.princeton.edu/)` -- gene recommender for mouse`
`* FunctionalNet `[`30`](http://www.functionalnet.org/)` -- composite functional networks for work, yeast, mouse and A thaliana`
`* FuncBase `[`31`](http://func.mshri.on.ca/)` -- a compiled database of gene functional predictions using supervised learning on Gene Ontology categories`

<hr>
### Integrated Assignment - Day 2

<font color="green">*Faculty: Veronique Voisin*</font>

![](pdf.gif "fig:pdf.gif") [Pathways2015\_part2\_IntegratedAssignment.pdf](Media:_Pathways2015_part2_IntegratedAssignmentAnswers.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Pathways2015\_part2\_IntegratedAssignmentAnswers.pdf](Media:_Pathways2015_part2_IntegratedAssignment.pdf "wikilink")

**Input Data sets:**
\* ![](txt.gif "fig:txt.gif") [ STAD\_MutSig.txt](Media:STAD_MutSig.txt "wikilink") (named GastricCancer\_mutsig.txt in the instructions)

<hr>
Day 3
-----

<hr>
### Module 6: Gene Regulation Network Analysis

<font color="green">*Faculty: Michael Hoffman*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module6.pdf](Media:Pathways2015_Module6.pdf "wikilink")

**Lab Practical:**
![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module6\_Lab.pdf](Media:HT-Biology2015_Module17_Lab.pdf "wikilink") ![](pdf.gif "fig:pdf.gif") [Pathways2015\_Module6\_Lab\_Addenda.pdf](Media:HT-Biology2015_Module17_Lab_Addenda.pdf "wikilink")

-   Nature Protocols paper by Ma, Bailey, and Noble: ![](txt.gif "fig:txt.gif")[Nprot.2014.083.pdf](Media:Nprot.2014.083.pdf "wikilink")

**Precomputed results:**
\* A549 c-Myc

-   -   [WgEncodeSydhTfbsA549CmycIggrabPk.narrowPeak.gz narrowPeak file](Media:WgEncodeSydhTfbsA549CmycIggrabPk.narrowPeak.gz "wikilink")
    -   [Study\_case\_1.fa](Media:Study_case_1.fa "wikilink")
    -   [MEME-ChIP report on A549 c-Myc](http://meme-suite.org/opal-jobs/appMEMECHIP_4.10.114333121108361396281259/meme-chip.html)
-   Unknown factor X
    -   [MEME-ChIP report on unknown factor X](http://meme-suite.org/opal-jobs/appMEMECHIP_4.10.11433312170419-164473246/meme-chip.html)
    -   [FIMO report on unknown factor X](http://meme-suite.org//info/status?service=FIMO&id=appFIMO_4.10.11433333067982-1298858865)

The above results should work for only a couple of days after the workshop. Archived results are in ![](AppMEMECHIP_4.10.114306204728401779362043.tar.gz "fig:AppMEMECHIP_4.10.114306204728401779362043.tar.gz").

**Links:**

` * `[`ENCODE` `Project`](http://encodeproject.org/)
` * `[`UCSC` `ENCODE` `file` `search`](http://encodeproject.org/cgi-bin/hgFileSearch?db=hg19)
` * `[`Galaxy`](https://usegalaxy.org/)
` * `[`MEME` `Suite`](http://meme.nbcr.net/)
