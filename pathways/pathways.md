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

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions\_Pathways](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/pathways/laptop_instruction.md)

Pre-Workshop Tutorials
----------------------

1) <b>Cytoscape Preparation tutorials:</b> Complete the introductory tutorial to Cytoscape: <http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape3>

-   Introduction to Cytoscape3 - User Interface
-   Introduction to Cytoscape3 - Welcome Screen
-   Filtering and Editing in Cytoscape 3

<hr>
Pre-Workshop Readings
---------------------

  * [MEME-ChIP: motif analysis of large DNA datasets](http://www.ncbi.nlm.nih.gov/pubmed/21486936)
  
  * [The GeneMANIA prediction server: biological network integration for gene prioritization and predicting gene function](http://www.ncbi.nlm.nih.gov/pubmed/20576703)
  
  * [GeneMANIA Prediction Server 2013 Update](http://www.ncbi.nlm.nih.gov/pubmed/23794635)
  
  * [How to visually interpret biological data using networks](http://www.ncbi.nlm.nih.gov/pubmed/19816451)
  
  * [g:Profiler--a web-based toolset for functional profiling of gene lists from large-scale experiments](http://www.ncbi.nlm.nih.gov/pubmed/17478515)
  
  * [g:Profiler--a web server for functional interpretation of gene lists (2011 update)](http://www.ncbi.nlm.nih.gov/pubmed/21646343)
  
  * [Gene set enrichment analysis: a knowledge-based approach for interpreting genome-wide expression profiles](http://www.ncbi.nlm.nih.gov/pubmed/16199517)
  
  * [Expression data analysis with reactome](http://www.ncbi.nlm.nih.gov/pubmed/25754994)

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

[Pathways2015\_Module1.pdf](https://bioinformatics.ca/pathways2015module1pdf)  
[Pathways2015\_Module1.ppt](https://bioinformatics.ca/pathways2015module1ppt)  
[Pathways2015\_Module1.mp4](https://bioinformatics.ca/pathways2015module1mp4)  

**Data Set:**

[module1YeastGenes.txt](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/pathways/yeast_genes.txt)

**Links:**

* [The Synergizer](http://llama.med.harvard.edu/synergizer/translate/) - identifier mapping
* [Ensembl BioMart(http://www.ensembl.org/index.html) - (in menu bar, select the BioMart tab) eukaryotic gene query system
* [ID Conversion Tool: gConvert](http://biit.cs.ut.ee/gprofiler/gconvert.cgi)  - identifier mapping
* [Gene Ontology](http://www.geneontology.org/) - gene annotation
* [Cytoscape](http://www.cytoscape.org/) - network visualization and analysis

<hr>
### Module 2: Finding over-represented pathways in gene lists

<font color="green">*Faculty: Quaid Morris*</font>

**Lecture:**

[Pathways2015\_Module2.pdf](https://bioinformatics.ca/pathways2015module2pdf)  
[Pathways2015\_Module2.ppt](https://bioinformatics.ca/pathways2015module2pptx)  
[Pathways2015\_Module2.mp4](https://bioinformatics.ca/pathways2015module2mp4)  

**Lab Practical:** Gene-set enrichment analyses using GSEA and g:Profiler

<font color="green">*Faculty: Veronique Voisin*</font>

[Pathways2015\_Module2\_LabSlides.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module2_LabSlides.pdf)
[Pathways2015\_Module2\_LabExercise.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module2_LabExercise.pdf)

**Data Set:**

* GSEA (exercise 1)

* [MCF7_Expression_matrix.gct](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/MCF7_Expression_matrix.gct)  
* [Human_GO_AllPathways.gmt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Human_GO_AllPathways.gmt)  
* [MCF7_groups.cls](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/MCF7_groups.cls)  

* g:Profiler (exercise 2)

* [24hr_topgenes.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/24hr_topgenes.txt)

**Launching GSEA:**

* [GSEA\_installation.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/GSEA_installation.pdf)

`command line: java -Xmx2G -jar gsea2-2.2.0.jar`

**Additional Links:**

* [GSEA](http://www.baderlab.org/CancerStemCellProject/VeroniqueVoisin/AdditionalResources/GSEA) - help on format, installation, method,...
* [g:Profiler](http://biit.cs.ut.ee/gprofiler/)
* [DAVID](http://david.abcc.ncifcrf.gov/) - Enrichment Analysis for simple gene lists (jacknifed Fisher's Exact Test)
* [ConceptGen](http://conceptgen.ncibi.org/core/conceptGen/index.jsp) - Enrichment Analysis for simple gene lists (Fisher's Exact Test)
* [GSEA](http://www.broad.mit.edu/gsea/) - Enrichment Analysis for ranked gene lists
* Other Enrichment Analysis tools for simple gene lists: [Funspec](http://funspec.med.utoronto.ca/), [GoMiner](http://discover.nci.nih.gov/gominer/)
* [List of 68 Enrichment Tools](http://www.nature.com/nprot/journal/v4/n1/extref/nprot.2008.211-S1.xls) available as of 2008

<hr>
### Module 3: Cytoscape Intro, Demo and Enrichment Maps

<font color="green">*Faculty: Gary Bader*</font>

**Lecture:**

[Pathways\_2015\_Module3.pdf](https://bioinformatics.ca/pathways2015module3pdf)  
[Pathways\_2015\_Module3.ppt](https://bioinformatics.ca/pathways2015module3ppt)  
[Pathways\_2015\_Module3.mp4](https://bioinformatics.ca/pathways2015module3mp4)  

**Lab Practical:** Creating an enrichment map from GSEA and g:Profiler results

* [http://baderlab.org/Software/EnrichmentMap](http://baderlab.org/Software/EnrichmentMap)

* link to install the latest available version of enrichment map: [http://baderlab.org/Software/EnrichmentMap#Development_Versions](http://baderlab.org/Software/EnrichmentMap#Development_Versions)

* Exercise 1: generate an enrichment map using GSEA results. Follow this protocol:
 [http://baderlab.org/Software/EnrichmentMap/Tutorial#Step_2:_Generate_Enrichment_Map_with_GSEA_Output](http://baderlab.org/Software/EnrichmentMap/Tutorial#Step_2:_Generate_Enrichment_Map_with_GSEA_Output)

* Exercise 2: generate an enrichment map using g:Profiler results. Follow this protocol:
 [http://baderlab.org/Software/EnrichmentMap/GProfilerTutorial#Step_2:_Generate_Enrichment_Map_with_g:Profiler_Output](http://baderlab.org/Software/EnrichmentMap/GProfilerTutorial#Step_2:_Generate_Enrichment_Map_with_g:Profiler_Output)

**Data Sets:**

-   Dataset Exercise 1 (download the folder, unzip it):

* [EM_EstrogenMCF7_GSEAresults.zip](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/EM_EstrogenMCF7_GSEAresults.zip)

-   Dataset Exercise 2:

*  [gprofiler_results_12hours.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Gprofiler_results_12hours.txt)
*  [hsapiens.NAME.gmt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Hsapiens.NAME.gmt)

**Result (back up files / cytoscape files):**

* [ES12\_vs\_NT12\_GSEA\_cyto3.cys](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/ES12_vs_NT12_GSEA_cyto3.cys)

* [gprofiler_results_12hours.cys](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Gprofiler_results_12hours.cys)

**Lab Practical optional:** Use your own data set.

**Programs Used:**

* [Cytoscape](http://www.cytoscape.org/)

* [Open Tutorials for Cytoscape](http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape)

Useful plugins:
* VistaClara - makes it easy to visualize gene expression data on networks
* Agilent Literature Search - extracts interactions from PubMed abstracts
* clusterMaker - provides multiple ways to cluster gene expression and networks
* BiNGO - provides over-representation analysis using Gene Ontology in Cytoscape - you can select genes in your network or provide a list of genes and see the enrichment results visually mapped to the Gene Ontology
* commandTool, coreCommands - used to control Cytoscape by a series of commands. E.g. automate the process: open network, layout network, save network as PDF. These plugins require Cytoscape 2.7
* jActiveModules - requires gene expression data over multiple samples (>3). Finds regions of a network where genes are active (e.g. differentially expressed) across multiple samples.
* Many more at [http://chianti.ucsd.edu/cyto_web/plugins/index.php](http://chianti.ucsd.edu/cyto_web/plugins/index.php)

<hr>
### Integrated Assignment - Day 1

<font color="green">*Faculty: Veronique Voisin*</font>

[Pathways2015\_part1\_IntegratedAssignment.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_part1_IntegratedAssignment.pdf)
[Pathways2015\_part1\_IntegratedAssignmentAnswers.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_part1_IntegratedAssignmentAnswers.pdf)

**Input Data sets:**

* [Expression.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Expression.txt)
* [gem1033458993259_BE.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Gem1033458993259_BE.txt)
* [gem1047581616441_EAC.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Gem1047581616441_EAC.txt)
* [GeneSet1_BE.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/GeneSet1_BE.txt)
* [GeneList2_EAC.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/GeneList2_EAC.txt)
* [hsapiens.NAME.gmt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Hsapiens.NAME.gmt)

<hr>
Day 2
-----

<hr>
### Module 4: Depth on Pathway and Network Analysis

<font color="green">*Faculty: Lincoln Stein*</font>

**Lecture:**

[Pathways2015\_Module4.pdf](https://bioinformatics.ca/pathways2015module4pdf)  
[Pathways2015\_Module4.ppt](https://bioinformatics.ca/pathways2015module4pptx)  
[Pathways2015\_Module4.mp4](https://bioinformatics.ca/pathways2015module4mp4)  

**Lab Practical:**

<font color="green">*Faculty: Robin Haw*</font>

[Pathways2015\_Module4\_LabSlides.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module4_LabSlides.pdf)  
[Pathways2015\_Module4\_Lab.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module4_Lab.pdf)  
[Pathways2015\_Module4\_LabAnswers.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module4_LabAnswers.pdf)  

**Data Sets:**

[Module 4 Data Set](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Day2_Module4_DataSets.zip)

**Programs Used:**

[Reactome Website](http://www.reactome.org)  
[Reactome User Guide](http://wiki.reactome.org/index.php/Usersguide)  
[ReactomeFI User Guide](http://wiki.reactome.org/index.php/Reactome_FI_Cytoscape_Plugin)  

**Papers:**

[Integrated genomic analyses of ovarian carcinoma](http://www.nature.com/nature/journal/v474/n7353/full/nature10166.html)

Clustering Algorithms: [Newman Clustering](http://www.pnas.org/content/103/23/8577.abstract) and [Hotnet](http://www.ncbi.nlm.nih.gov/pubmed/22174262)

Reactome Website: [NAR paper](http://www.ncbi.nlm.nih.gov/pubmed/26656494); [Website guide](https://bioinformatics-ca.github.io/2016_workshops/cancer/ReactomeWebSiteGuide_for_resources.pdf)

[Nature Methods and Perspectives Paper](http://www.ncbi.nlm.nih.gov/pubmed/26125594)

[Supplementary Materials](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4717906/bin/NIHMS750562-supplement-Supplementary_materials.pdf)


**Links:**

<b>Pathway and Interaction databases</b>

 * [GO](http://www.geneontology.org)
 * [KEGG](http://www.genome.jp/kegg)
 * [Biocarta](http://www.biocarta.com)
 * [Reactome](http://reactome.org/) Curated human pathways
 * [NCI/PID](http://pid.nci.nih.gov/)
 * [Pathway Commons](http://www.pathwaycommons.org/pc/) Aggregates pathways from multiple sources
 * [iRefWeb/iRefIndex](http://wodaklab.org/iRefWeb/) Protein interactions
 * [>300 more](http://www.pathguide.org/)


<hr>
### Module 5: Gene Function Prediction

<font color="green">*Faculty: Quaid Morris*</font>

**Lecture:**

[Pathways2015\_NYC\_Module5.pdf](https://bioinformatics.ca/pathways2015module5pdf)  
[Pathways2015\_NYC\_Module5.ppt](https://bioinformatics.ca/pathways2015module5ppt)  
[Pathways2015\_NYC\_Module5.mp4](https://bioinformatics.ca/pathways2015module5mp4)  

**Lab Practical:**

[Pathways2015\_Module5\_LabSlides.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module5_LabSlides.pdf)
[Pathways2015\_Module5\_LabExercise.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module5_Lab.pdf)

**Data Sets for GeneMANIA exercises:**

[30\_prostate\_cancer\_genes.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/30_prostate_cancer_genes.txt)
[mixed\_gene\_list.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Mixed_gene_list.txt)
[CYB11B\_pearson\_correlation\_prostate.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/CYB11B_pearson_correlation_prostate.txt)

**Links:**

<b>Tools for gene function prediction systems (using functional associations)</b>

* [GeneMANIA](http://www.genemania.org/) (or [beta version](http://beta.genemania.org/))
* [STRING](http://string.embl.de/)
* [FunCoup](http://funcoup.sbc.su.se/) -- similar to STRING and GeneMANIA
* [bioPIXIE](http://pixie.princeton.edu/pixie/) -- an early gene recommender system for yeast
* [mouseNET](http://mousenet.princeton.edu/) -- gene recommender for mouse
* [FunctionalNet](http://www.functionalnet.org/) -- composite functional networks for work, yeast, mouse and A thaliana
* [FuncBase](http://func.mshri.on.ca/) -- a compiled database of gene functional predictions using supervised learning on Gene Ontology categories

<hr>
### Integrated Assignment - Day 2

<font color="green">*Faculty: Veronique Voisin*</font>

[Pathways2015\_part2\_IntegratedAssignment.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_part2_IntegratedAssignment.pdf)
[Pathways2015\_part2\_IntegratedAssignmentAnswers.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_part2_IntegratedAssignmentAnswers.pdf)

**Input Data sets:**

* [STAD\_MutSig.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/STAD_MutSig.txt) (named GastricCancer\_mutsig.txt in the instructions)

<hr>
Day 3
-----

<hr>
### Module 6: Gene Regulation Network Analysis

<font color="green">*Faculty: Michael Hoffman*</font>

**Lecture:**

[Pathways2015\_Module6.pdf](https://bioinformatics.ca/pathways2015module6pdf)  
[Pathways2015\_Module6.ppt](https://bioinformatics.ca/pathways2015module6pptx)  
[Pathways2015\_Module6.mp4](https://bioinformatics.ca/pathways2015module6mp4)  

**Lab Practical:**

[Pathways2015\_Module6\_Lab.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/HT-Biology2015_Module17_Lab.pdf) [Pathways2015\_Module6\_Lab\_Addenda.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/HT-Biology2015_Module17_Lab_Addenda.pdf)

-   Nature Protocols paper by Ma, Bailey, and Noble: [Nprot.2014.083.pdf](Media:Nprot.2014.083.pdf "wikilink")

**Precomputed results:**

* A549 c-Myc

The results provided during the workshop do not work outside the workshop. Archived results are in ![AppMEMECHIP_4.10.114306204728401779362043.tar.gz](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/File-AppMEMECHIP_4.10.114306204728401779362043.tar.gz).

**Links:**

* [ENCODE Project](http://encodeproject.org/)
* [UCSC ENCODE file search](http://encodeproject.org/cgi-bin/hgFileSearch?db=hg19)
* [Galaxy](https://usegalaxy.org/)
* [MEME Suite](http://meme.nbcr.net/)
