---
layout: post2
permalink: /high_throughput_biology_2015/
title: High-Throughput Biology 2015 Student Page
header1: High-Throughput Biology - From Sequence to Networks 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Video from 1st Bioinformatics Workshop
--------------------------------------

[https://www.youtube.com/watch?v=yzL1yJ8znz0 Stephanie Finds Bioinformatics](https://www.youtube.com/watch?v=yzL1yJ8znz0_Stephanie_Finds_Bioinformatic) Stephanie Butland was in my group in 1999, and one of her first jobs in my group was to be a TA in the 1st two week CBW in Calgary, AB.

Laptop Setup Instructions
-------------------------

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions\_HT-Biology](https://github.com/bioinformatics-ca/2015_workshops/blob/master/HTBio/Laptop_setup.md)

Pre-Workshop Tutorials
----------------------

1) <b>R Preparation tutorials:</b> You are expected to have completed the following tutorials in R beforehand. The tutorial should be very accessible even if you have never used R before.

* The [CBW R tutorial](http://bioinformatics-ca.github.io/CBW_R_Tutorial/) or [R Tutorial](http://www.cyclismo.org/tutorial/R/) 
* The [R command cheat sheet](../../resources/R_Short-refcard.pdf)
* [R Plotting Reference](https://github.com/bioinformatics-ca/bioinformatics-ca.github.io/blob/master/resources/Plotting.Reference.ipynb)

2) <b>Cytoscape 3.x Preparation tutorials:</b> Complete the introductory tutorial to Cytoscape 3.x: <http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape3>

-   Introduction to Cytoscape3 - User Interface
-   Introduction to Cytoscape3 - Welcome Screen
-   Introduction to Cytoscape 3.1 - Networks, Data, Styles, Layouts and App Manager

3) <b>UNIX Preparation tutorials:</b> Please complete tutorials \#1-3 on UNIX at <http://www.ee.surrey.ac.uk/Teaching/Unix/>

-   [Unix Cheat sheet](http://www.rain.org/~mkummel/unix.html)

<hr>
Pre-Workshop Readings
---------------------

[Using cloud computing infrastructure with CloudBioLinux, CloudMan, and Galaxy](http://www.ncbi.nlm.nih.gov/pubmed/22700313)

[Integrative Genomics Viewer (IGV): high-performance genomics data visualization and exploration](http://www.ncbi.nlm.nih.gov/pubmed/22517427)

[Savant Genome Browser 2: visualization and analysis for population-scale genomics](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3394255/)

[Genome structural variation discovery and genotyping](http://www.ncbi.nlm.nih.gov/pubmed/21358748)

[A survey of sequence alignment algorithms for next-generation sequencing](http://www.ncbi.nlm.nih.gov/pubmed/20460430)

[Genotype and SNP calling from next-generation sequencing data](http://www.ncbi.nlm.nih.gov/pubmed/21587300)

[Differential gene and transcript expression analysis of RNA-seq experiments with TopHat and Cufflinks](http://www.ncbi.nlm.nih.gov/pubmed/22383036)

[ENCODE RNA-Seq Standards](https://genome.ucsc.edu/ENCODE/protocols/dataStandards/ENCODE_RNAseq_Standards_V1.0.pdf)

[Methods to study splicing from high-throughput RNA sequencing data](http://www.ncbi.nlm.nih.gov/pubmed/24549677)

[Differential analysis of gene regulation at transcript resolution with RNA-seq](http://www.ncbi.nlm.nih.gov/pubmed/23222703)

[A comprehensive assessment of RNA-seq accuracy, reproducibility and information content by the Sequencing Quality Control Consortium](http://www.ncbi.nlm.nih.gov/pubmed/25150838)

[Recurrent chimeric RNAs enriched in human prostate cancer identified by deep sequencing](http://www.ncbi.nlm.nih.gov/pubmed/21571633)

[The GeneMANIA prediction server: biological network integration for gene prioritization and predicting gene function](http://www.ncbi.nlm.nih.gov/pubmed/20576703)

[GeneMANIA Prediction Server 2013 Update](http://www.ncbi.nlm.nih.gov/pubmed/23794635)

[How to visually interpret biological data using networks](http://www.ncbi.nlm.nih.gov/pubmed/19816451)

[g:Profiler--a web-based toolset for functional profiling of gene lists from large-scale experiments](http://www.ncbi.nlm.nih.gov/pubmed/17478515)

[g:Profiler--a web server for functional interpretation of gene lists (2011 update)](http://www.ncbi.nlm.nih.gov/pubmed/21646343)

[Expression data analysis with reactome](http://www.ncbi.nlm.nih.gov/pubmed/25754994)

<hr>
Logging into the Amazon cloud
-----------------------------

Instructions can be found [here](http://bioinformatics-ca.github.io/logging_into_the_Amazon_cloud/).
 
-   These instructions will ONLY be relevant in class, as the Cloud will not be accessible from home in advance of the class.

<hr>
Day 1
-----

### Module 1: Overview of HT-sequencing & Cloud Computing

<font color="green">*Faculty: Francis Ouellette*</font>

**Lecture**

[HTBSN15\_Day1\_Module1.pdf](https://bioinformatics.ca/htbiology2015module1pdf)  
[HTBSN15\_Day1\_Module1.ppt](https://bioinformatics.ca/htbiology2015module1pptx)  
[HTBSN15\_Day1\_Module1.mp4](https://bioinformatics.ca/htbiology2015module1mp4)  

![Cloud-computing-cartoon-new-yorker1.jpg](http://cdn2.hubspot.net/hubfs/178803/cloud-computing-cartoon-new-yorker1.jpg?t=1471272234751)
From <http://goo.gl/ruy9ib>

<hr>
### Module 2: Reference Genome Alignment

<font color="green">*Faculty: Matei David*</font>

**Lecture:**

[HT-Biology2015\_Module2.pdf](https://bioinformatics.ca/htbiology2015module2pdf)  
[HT-Biology2015\_Module2.mp4](https://bioinformatics.ca/htbiology2015module2mp4)

**Lab Practical:**

[Lab practical](http://bioinformatics-ca.github.io/high-throughput_sequencing_mod2_lab_2015/)

[Discussion questions](https://github.com/bioinformatics-ca/2015_workshops/blob/master/htseq/htseq_mod2_disc.md)

**Data set:**

You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip) after the workshop. You may also need download the [reference genome](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_reference.zip) if you do not have one to do the lab practice on your own machine.

**Programs used:**

* [samtools](http://samtools.sourceforge.net/)
* [BWA](http://bio-bwa.sourceforge.net/)
* [Bowtie2](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml)
* [Picard](http://broadinstitute.github.io/picard/index.html)
* [GATK](http://www.broadinstitute.org/gsa/wiki/index.php/The_Genome_Analysis_Toolkit)
* [SeqTK](https://github.com/lh3/seqtk)
* [IGV](http://www.broadinstitute.org/igv/)

**Links to Additional Resources:**

* [SEQanswers bioinformatics forum](http://seqanswers.com/forums/forumdisplay.php?f=18)  
* [SAM/BAM file format specification](http://samtools.sourceforge.net/SAM1.pdf)  
* [Paired end vs mate pair reads](https://github.com/bioinformatics-ca/2015_workshops/raw/master/htseq/Paired_end_and_mate_pair.pdf)  
* [Base qualities vs mapping qualities](http://maq.sourceforge.net/qual.shtml)  
* [The decoy genome](http://www.cureffi.org/2013/02/01/the-decoy-genome/)  

<hr>
### Module 3: Data Visualization

<font color="green">*Faculty: Marc Fiume*</font>

**Lecture:**

[HT-Biology2015\_Module3.pdf](https://bioinformatics.ca/htbiology2015module3pdf)  
[HT-Biology2015\_Module3.ppt](https://bioinformatics.ca/htbiology2015module3pptx)

**Lab Practical:**

* [Visualization Scavenger Hunt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/Visualization_Scavenger_Hunt.pdf)
* Part I: [Using the IGV to visualize HTS datasets](http://bioinformatics-ca.github.io/bioinformatics_for_cancer_genomics_IGV_lab_2016/)
* Part II: [Using the Savant Genome Browser to visualize HTS datasets](http://bioinformatics-ca.github.io/savant_genome_browser_lab_2015/) (start at inspecting structural variants)

**Data set:**

You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module3_data.zip) after the workshop to your local machine and work from there.

**Programs used:**

* [IGV](http://www.broadinstitute.org/igv/)

* [Savant Genome Browser](http://genomesavant.com/)

**IGV Tips and Tricks:**

[IGV Tutorial practice](https://github.com/bioinformatics-ca/bioinformatics-ca.github.io/raw/master/resources/IGV_Tutorial.pdf)

<hr>
### Module 4: De Novo Assembly

<font color="green">*Faculty: Jared Simpson*</font>

**Lecture:**

[HT-Biology2015\_Module4.pdf](https://bioinformatics.ca/htbiology2015module4pdf)  
[HT-Biology2015\_Module4.mp4](https://bioinformatics.ca/htbiology2015module4mp4)

Paper cited by Jared in lecture: [A comprehensive evaluation of assembly scaffolding tools](http://genomebiology.com/2014/15/3/R42_A_comprehensive_evaluation_of_assembly_scaffolding_tools)

<hr>
### Integrated Assignment for Day 1

<font color="green">*Faculty: Richard de Borja*</font>

Review the techniques learned in Modules 1-3.

Task list:

1.  Align the raw data to the human reference genome.
2.  Sort the reads and perform duplicate removal.
3.  Index the sorted bam file.
4.  Perform indel cleaning.
5.  Visualize the alignments.

Discussion/Questions:

1.  Explain the purpose of each step.
2.  Which software tool can be used for each step.

Integrated Assignment:  [ IA\_Questions-Answers\_2015.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/htseq/integrated_assignment.txt)

**Data set:** 

The data set for this integrated assignment is included in [ Module2 data set](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip)

<hr>
Day 2
-----

<hr>
### Module 5: Small variant calling & annotation

<font color="green">*Faculty: Guillaume Bourque*</font>

**Lecture:**

[HT-Biology2015\_Module5.pdf](https://bioinformatics.ca/htbiology2015module5pdf)  
[HT-Biology2015\_Module5.ppt](https://bioinformatics.ca/htbiology2015module5pptx)    
[HT-Biology2015\_Module5.pmp4](https://bioinformatics.ca/htbiology2015module5mp4)    

**Lab Practical:**

 [Lab directions](http://bioinformatics-ca.github.io/informatics_for_high-throughput_data_sequencing_2016_module5_lab/")

[VCF format](https://samtools.github.io/hts-specs/VCFv4.2.pdf)

<font color="red">**Pro-tip:**</font> 

A great resource for putting together a GATK-based variant calling pipeline is the [GATK Best practices](http://www.broadinstitute.org/gatk/guide/topic?name=best-practices) page. This page will guide you in your quest to produce the best variant calls possible using GATK.

<font color="red">**Pro-tip 2:**</font> 

Another useful program for generating summary statistics on vcf files, filtering vcf files, and comparing multiple vcf files is [**vcftools**](http://vcftools.sourceforge.net/).

**Data set:**

You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_data.zip) after the workshop to your local machine and work from there.

**Programs used:**

* [GATK](http://www.broadinstitute.org/gsa/wiki/index.php/The_Genome_Analysis_Toolkit)  
* [snpEff](http://snpeff.sourceforge.net/)  
* [IGV](http://www.broadinstitute.org/igv/)  

<hr>
### Module 6: Structural variation calling

<font color="green">*Faculty: Guillaume Bourque*</font>

**Lecture:**

[HT-Biology2015\_Module6.pdf](https://bioinformatics.ca/htbiology2015module6pdf)  
[HT-Biology2015\_Module6.ppt](https://bioinformatics.ca/htbiology2015module6pptx)    
[HT-Biology2015\_Module6.mp4](https://bioinformatics.ca/htbiology2015module6mp4)    

 [Lab directions](http://bioinformatics-ca.github.io/high-throughput_sequencing_mod6_lab_2015/)

**Data set:**

You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_data.zip) after the workshop to your local machine and work from there.

**Programs used:**

* [Lumpy-SV](https://github.com/arq5x/lumpy-sv)

* [IGV](http://www.broadinstitute.org/igv/)

<hr>
### Module 7: Bringing it all Together: Galaxy

<font color="green">*Faculty: Francis Ouellette*</font>

**Lecture:**

[Module\_07\_NYGC\_CBW\_Ouellette\_ver04.pdf](https://bioinformatics.ca/htbiology2015module7pdf)  
[Module\_07\_NYGC\_CBW\_Ouellette\_ver04.ppt](https://bioinformatics.ca/htbiology2015module7pptx)  
[Module\_07\_NYGC\_CBW\_Ouellette\_ver04.mp4](https://bioinformatics.ca/htbiology2015module7mp4)  

**Lab Practical:**

[HT-seq\_2015\_Module7\_Lab.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/htseq/HT-seq_2015_Module7_Lab.pdf)

<b>Dataset for the Galaxy lab:</b>

In Galaxy, under Get Data and Upload File in the URL box:

NA12878_CBW_chr1_R1.fastq.gz
[http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R1.fastq.gz](http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R1.fastq.gz)  
NA12878_CBW_chr1_R2.fastq.gz
[http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R2.fastq.gz](http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R2.fastq.gz)  
hg19_chr1.fa
[http://cbwxx.dyndns.info/module7/hg19_chr1.fa](http://cbwxx.dyndns.info/module7/hg19_chr1.fa)  
dbSNP_135_chr1.vcf.gz
[http://cbwxx.dyndns.info/module2/dbSNP_135_chr1.vcf.gz](http://cbwxx.dyndns.info/module2/dbSNP_135_chr1.vcf.gz)  

**Note:** xx is your student number.

Galaxy workflow part 1 (cloud): [Galaxy-Workflow-CBW Galaxy lab part1 Alignment Variant calling.ga](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/htseq/Galaxy-Workflow-CBW_Galaxy_lab_part1_Alignment_Variant_calling.ga)
Galaxy workflow part 2 (main instance): [Galaxy-Workflow-CBW Galaxy lab part2 VariantFiltration Annotation.ga](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/htseq/Galaxy-Workflow-CBW_Galaxy_lab_part2_VariantFiltration_Annotation.ga)  

**What you need for the lab:**

-   Galaxy public server: [<https://usegalaxy.org/>](https://usegalaxy.org/)

You will need to register for an account on Galaxy so that you can run tools in their environment.

**Galaxy Resources:**

-   [galaxyproject.org: Galaxy home page](http://galaxyproject.org)  
-   [usegalaxy.org: main Galaxy public server](http://usegalaxy.org)  
-   [getgalaxy.org: source for installing local Galaxy](http://getgalaxy.org)  
-   [usegalaxy.org/cloud: use galaxy in the cloud](http://usegalaxy.org/cloud)  
-   Example of a Galaxy pipeline (we used for an RNASeq lab last year. Save file as:[ Galaxy-Workflow-Module_5_workflow_from_Emilie_Chautard_and_Francis.ga](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/htseq/Galaxy-Workflow-Module_5_workflow_from_Emilie.ga)   
-   [Galaxy 101 worked example](https://main.g2.bx.psu.edu/u/aun1/p/galaxy101)  
-   [Galaxy servers throughout the world](http://wiki.galaxyproject.org/PublicGalaxyServers)  
-   [Published (read: Public) pages](https://main.g2.bx.psu.edu/page/list_published)  

Day 3
-----

<hr>
#### Module 8: Introduction to RNA sequencing and analysis

<font color="green">*Faculty: Malachi Griffith*</font>

**Lecture slides:**

[HT-Biology2015\_Module8.pdf](https://bioinformatics.ca/htbiology2015module8pdf)  
[HT-Biology2015\_Module8.ppt](https://bioinformatics.ca/htbiology2015module8pptx)  
[HT-Biology2015\_Module8.mp4](https://bioinformatics.ca/htbiology2015module8mp4)  

**Lab practical:**

Lab introduction slides: [HT-Biology2015\_Module8\_LabSlides.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module1_Tutorial.pdf)

Tutorial scripts: 

[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 1 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Installation)

<hr>
#### Module 9: RNA-seq alignment and visualization

<font color="green">*Faculty: Obi Griffith*</font>

**Lecture slides:**

[HT-Biology2015\_Module9.pdf](https://bioinformatics.ca/htbiology2015module9pdf)  
[HT-Biology2015\_Module9.ppt](https://bioinformatics.ca/htbiology2015module9pptx)  
[HT-Biology2015\_Module9.mp4](https://bioinformatics.ca/htbiology2015module9mp4)  

**Lab practical:**

Lab introduction slides: [HT-Biology2015\_Module9\_LabSlides.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module2_Tutorial.pdf)

Tutorial scripts: 

[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 2 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Adapter-Trim)

<hr>
#### Integrated Assignment - Day 3

<font color="green">*Faculty: Fouad Yousif*</font>

[Integrated Assignment](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment)  

Paper for Integrated Assignment Day 3 - Recurrent chimeric RNAs enriched in human prostate cancer identified by deep sequencing [PMC3107329](http://www.ncbi.nlm.nih.gov/pubmed/21571633)

Assignment Text: 

**Assignment Questions:**

[Integrated Assignment](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment)

**Answer Key:**

[Integrated Assignment Answers](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment-Answers)

<hr>
Day 4
-----

<hr>
#### Module 10: Expression and Differential Expression

<font color="green">*Faculty: Obi Griffith*</font>

**Lecture slides:**

[HT-Biology2015\_Module10.pdf](https://bioinformatics.ca/htbiology2015module10pdf)  
[HT-Biology2015\_Module10.ppt](https://bioinformatics.ca/htbiology2015module10pptx)  
[HT-Biology2015\_Module10.mp4](https://bioinformatics.ca/htbiology2015module10mp4)  

**Lab practical:**

Lab introduction slides: [HT-Biology2015\_Module10\_LabSlides.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module3_Tutorial.pdf)

Tutorial Scripts: 

[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 3 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Expression)

<hr>
#### Module 11: Isoform discovery and alternative expression

<font color="green">*Faculty: Malachi Griffith*</font>

**Lecture slides:**

[HT-Biology2015\_Module11.pdf](https://bioinformatics.ca/htbiology2015module11pdf)  
[HT-Biology2015\_Module11.ppt](https://bioinformatics.ca/htbiology2015module11pptx)  
[HT-Biology2015\_Module11.mp4](https://bioinformatics.ca/htbiology2015module11mp4)  

**Lab practical:**

Lab introduction slides: [HT-Biology2015\_Module11\_LabSlides.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module4_Tutorial.pdf)

Tutorial scripts: 

[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 4 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Reference-Guided-Transcript-Assembly)

<hr>
#### Integrated Assignment - Day 4

<font color="green">*Faculty: Fouad Yousif*</font>

[Integrated Assignment](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment)

Assignment Answer Key: [Integrated Assignment Answers](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment-Answers)

<hr>
### Keeping Up-to-date with RNA-seq Analysis Developments

-   [The RNA-seq blog - recent developments in RNA-seq technology and analysis](http://www.rna-seqblog.com/)
-   [Biostar - A forum for the bioinformatics community](http://www.biostars.org/)
-   [SEQanswers - A forum for the next generation sequencing community](http://seqanswers.com/)
-   [HTS Mappers - A list of read mappers](http://wwwdev.ebi.ac.uk/fg/hts_mappers/)
-   [The periodic table of bioinformatics - A list of popular bioinformatics resources and tools](http://elements.eaglegenomics.com/)
-   [The Bioinformatics Links Directory](http://bioinformatics.ca/links_directory/)

Day 5
-----

<hr>
### Module 12: Introduction to Pathway and Network Analysis

<font color="green">*Faculty: Jüri Reimand*</font>

**Lecture:**

[HT-Biology2015\_Module12.pdf](https://bioinformatics.ca/htbiology2015module12pdf)  
[HT-Biology2015\_Module12.ppt](https://bioinformatics.ca/htbiology2015module12ppt)  
[HT-Biology2015\_Module12.mp4](https://bioinformatics.ca/htbiology2015module12mp4)  

**Links:**

* [The Synergizer](http://llama.med.harvard.edu/synergizer/translate/) - identifier mapping  
* [Ensembl BioMart(http://www.ensembl.org/index.html) - (in menu bar, select the BioMart tab) eukaryotic gene query system  
* [ID Conversion Tool: gConvert](http://biit.cs.ut.ee/gprofiler/gconvert.cgi)  - identifier mapping  
* [Gene Ontology](http://www.geneontology.org/) - gene annotation  
* [Cytoscape](http://www.cytoscape.org/) - network visualization and analysis  

<hr>
### Module 13: Finding over-represented pathways in gene lists

<font color="green">*Faculty: Quaid Morris*</font>

**Lecture:**

[HT-Biology2015\_Module13.pdf](https://bioinformatics.ca/htbiology2015module13pdf)  
[HT-Biology2015\_Module13.ppt](https://bioinformatics.ca/htbiology2015module13pptx)  
[HT-Biology2015\_Module13.mp4](https://bioinformatics.ca/htbiology2015module13mp4)  

**Lab Practical:**

<font color="green">*Faculty: Jüri Reimand*</font>

[HT-Biology2015\_Module13\_Lab.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/HT-Biology2015_Module13_Lab.pdf)

**g:Profiler Files and data for lab:**

*  [Materials\_for\_ORA.zip](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/Materials_for_ORA.zip)
  * MCF7_12hr_topgenes.txt - g:Profiler input with significantly expressed genes in MFC7 cells at 12h
  * MCF7_24hr_topgenes.txt - g:Profiler input with significantly expressed genes in MFC7 cells at 24h
  * MCF7_12hr_24hr_topgenes_for_gCocoa.txt - g:Cocoa input with both gene lists
  * Yeast_TFs_in_cell_cycle.txt - cell cycle transcription factor list, to test with background set
  * Yeast_TF_background_list.txt - all transcription factors in yeast, to test with background set

 **Link to g:Profiler:**

[http://biit.cs.ut.ee/gprofiler/index.cgi](http://biit.cs.ut.ee/gprofiler/index.cgi)

**Online info and tutorials:**

BaderLab tutorial for g:Profiler + Enrichment Map: [http://www.baderlab.org/Software/EnrichmentMap/GProfilerTutorial](http://www.baderlab.org/Software/EnrichmentMap/GProfilerTutorial)

**Additional Links:**

* [Systematic and integrative analysis of large gene lists using DAVID bioinformatics resources](http://www.ncbi.nlm.nih.gov/pubmed/19131956)
* [Comparison of enrichment tools](http://www.nature.com/nprot/journal/v4/n1/suppinfo/nprot.2008.211_S1.html)
* [ConceptGen](http://conceptgen.ncibi.org/core/conceptGen/index.jsp) - Enrichment Analysis for simple gene lists (Fisher's Exact Test)
* [GSEA](http://www.broad.mit.edu/gsea/) - Enrichment Analysis for ranked gene lists
* Other Enrichment Analysis tools for simple gene lists: [Funspec](http://funspec.med.utoronto.ca/), [GoMiner](http://discover.nci.nih.gov/gominer/)
* [List of 68 Enrichment Tools](http://www.nature.com/nprot/journal/v4/n1/extref/nprot.2008.211-S1.xls) available as of 2008

<hr>
### Module 14: Cytoscape Intro, Demo and Enrichment Maps

<font color="green">*Faculty: Jüri Reimand*</font>

**Lab Practical:** 

Use the enrichment results from g:Profiler in module 13 (back up files) to create Enrichment Maps

[HT-Biology2015\_Module14\_LabSlides.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/HT-Biology2015_Module14_LabSlides.pdf)

**Cytoscape files and data for lab:**

*  [Materials\_for\_Cytoscape\_and\_EnrichmentMap.zip](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/Materials_for_Cytoscape_and_EnrichmentMap.zip)  
  * Cytoscape_demo_session.cys - Cytoscape session to test network visualisation, filtering, and analysis
  * Cytoscape_example_network.txt - Example network for Cytoscape demo. Load with File > Import > Network.
  * Cytoscape_example_node_attributes.txt - Node attributes for Cytoscape demo. Load with File > Import > Table.
  * EnrichmentMap_24h_Cytoscape_session.cys - Cytoscape session with Enrichment Maps of MCF7 cells on 24h.
  * cancer_genes.gmt - GMT file with list of cancer genes used for Post-Analysis.
  * enrichmentmap-2.0.1.jar - Java file of Enrichment Map app, install with Apps > App Manager > Install from File. 
  * enrichments_12h_gem1029976022995.txt - Table of pathway enrichments from g:Profiler, MFC7 cells at 24h.
  * enrichments_24h_gem1047153205012.txt - Table of pathway enrichments from g:Profiler, MFC7 cells at 12h.
  * hsapiens.NAME.gmt - GMT file with pathways and corresponding gene sets from g:Profiler.

**Lab Practical optional:** 

Use your own data set.

**Programs Used:**

* [Cytoscape](http://www.cytoscape.org/)

* Open Tutorials for Cytoscape: [http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape](http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape)
* EnrichmentMap - [http://apps.cytoscape.org/apps/enrichmentmap](http://apps.cytoscape.org/apps/enrichmentmap)
Enrichment Map App can be also downloaded from Cytoscape > Apps > App Manager > Search > EnrichmentMap > Install.

**Enrichment Map info and tutorials:**

* Enrichment Map Software: <http://baderlab.org/Software/EnrichmentMap>

 * BaderLab tutorial for g:Profiler + Enrichment Map: [http://www.baderlab.org/Software/EnrichmentMap/GProfilerTutorial](http://www.baderlab.org/Software/EnrichmentMap/GProfilerTutorial)  
 * Enrichment Map Post-Analysis Tutorial: [http://www.baderlab.org/Software/EnrichmentMap/PostAnalysisTutorial](http://www.baderlab.org/Software/EnrichmentMap/PostAnalysisTutorial)  

**Other useful Cytoscape apps**:

* Agilent Literature Search - extracts interactions from PubMed abstracts  
* clusterMaker2 - provides multiple ways to cluster gene expression and networks  
* BiNGO - provides over-representation analysis using Gene Ontology in Cytoscape - you can select genes in your network or provide a list of genes and see the enrichment results visually mapped to the Gene Ontology  
* jActiveModules - requires gene expression data over multiple samples (>3). Finds regions of a network where genes are active (e.g. differentially expressed) across multiple samples.  
* Many more at [http://apps.cytoscape.org/apps/enrichmentmap](http://apps.cytoscape.org/apps/enrichmentmap)  

<hr>
### Integrated Assignment - Day 5

<font color="green">*Faculty: Irina Kalatskaya*</font>

**Lab Practical:**

[HT-Biology2015\_Day5\_IntegratedAssignment.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/HT-Biology2015_Day5_IntegratedAssignment.pdf)  
[HT-Biology2015\_Day5\_IntegratedAssignmentAnswers.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/HT-Biology2015_Day5_IntegratedAssignmentAnswers.pdf)  

**Input Data sets:**

* [Expression.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Expression.txt)
* [gem1033458993259_BE.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Gem1033458993259_BE.txt)
* [gem1047581616441_EAC.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Gem1047581616441_EAC.txt)
* [GeneSet1_BE.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/GeneSet1_BE.txt)
* [GeneList2_EAC.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/GeneList2_EAC.txt)
* [hsapiens.NAME.gmt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Hsapiens.NAME.gmt)

<hr>
Day 6
-----

<hr>
### Module 15: Depth on Pathway and Network Analysis

<font color="green">*Faculty: Robin Haw*</font>

**Lecture:**

[HT-Biology2015\_Module15.pdf](https://bioinformatics.ca/htbiology2015module15pdf)  
[HT-Biology2015\_Module15.ppt](https://bioinformatics.ca/htbiology2015module15pptx)  
[HT-Biology2015\_Module15.mp4](https://bioinformatics.ca/htbiology2015module15mp4)  

**Lab Practical:**

[HT-Biology2015\_Module15\_LabSlides.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module4_LabSlides.pdf)  
[HT-Biology2015\_Module15\_LabExercise.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module4_Lab.pdf)  
[HT-Biology2015\_Module15\_LabAnswers.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module4_LabAnswers.pdf)  

**Data Sets:**

[Module 15 Data Set](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Day2_Module4_DataSets.zip)  


**Programs Used:**

* [Reactome Website](http://www.reactome.org)
* [Reactome User Guide](http://wiki.reactome.org/index.php/Usersguide)
* [ReactomeFI User Guide](http://wiki.reactome.org/index.php/Reactome_FI_Cytoscape_Plugin)

**Papers:**

[Integrated genomic analyses of ovarian carcinoma](http://www.nature.com/nature/journal/v474/n7353/full/nature10166.html)

Clustering Algorithms: [Newman Clustering](http://www.pnas.org/content/103/23/8577.abstract) and [Hotnet](http://www.ncbi.nlm.nih.gov/pubmed/22174262)

Reactome Website: [NAR paper](http://www.ncbi.nlm.nih.gov/pubmed/26656494); [Website guide](https://bioinformatics-ca.github.io/2016_workshops/cancer/ReactomeWebSiteGuide_for_resources.pdf)

[Nature Methods and Perspectives Paper](http://www.ncbi.nlm.nih.gov/pubmed/26125594)

[Supplementary Materials](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4717906/bin/NIHMS750562-supplement-Supplementary_materials.pdf)


**Links:**

<b>Pathway and Interaction databases</b>

 * [GO](http://www.geneontology.org)
 * [KEGG](http://www.genome.jp/kegg)
 * [Biocarta](http://www.biocarta.com)
 * [Reactome](http://reactome.org/) Curated human pathways
 * [NCI/PID](http://pid.nci.nih.gov/)
 * [Pathway Commons](http://www.pathwaycommons.org/pc/) Aggregates pathways from multiple sources
 * [iRefWeb/iRefIndex](http://wodaklab.org/iRefWeb/) Protein interactions
 * [>300 more](http://www.pathguide.org/)

<hr>
### Module 16: Gene Function Prediction

<font color="green">*Faculty: Quaid Morris*</font>

**Lecture:**

[HT-Biology2015\_Module16.pdf](https://bioinformatics.ca/htbiology2015module16pdf)  
[HT-Biology2015\_Module16.ppt](https://bioinformatics.ca/htbiology2015module16pptx)  
[HT-Biology2015\_Module16.mp4](https://bioinformatics.ca/htbiology2015module16mp4)  

**Lab Practical:**

[HT-Biology2015\_Module16\_LabSlides.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module5_LabSlides.pdf)    
[HT-Biology2015\_Module16\_LabExercise.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_Module5_Lab.pdf)    

**Data Sets for GeneMANIA exercises:**

[30\_prostate\_cancer\_genes.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/30_prostate_cancer_genes.txt)  
[mixed\_gene\_list.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Mixed_gene_list.txt)  
[CYB11B\_pearson\_correlation\_prostate.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/CYB11B_pearson_correlation_prostate.txt)  

**Links:**

<b>Tools for gene function prediction systems (using functional associations)</b>

* [GeneMANIA](http://www.genemania.org/) (or [beta version](http://beta.genemania.org/))  
* [STRING](http://string.embl.de/)  
* [FunCoup](http://funcoup.sbc.su.se/) -- similar to STRING and GeneMANIA  
* [bioPIXIE](http://pixie.princeton.edu/pixie/) -- an early gene recommender system for yeast  
* [mouseNET](http://mousenet.princeton.edu/) -- gene recommender for mouse  
* [FunctionalNet](http://www.functionalnet.org/) -- composite functional networks for work, yeast, mouse and A thaliana  
* [FuncBase](http://func.mshri.on.ca/) -- a compiled database of gene functional predictions using supervised learning on Gene Ontology categories  

<hr>
### Integrated Assignment - Day 6

<font color="green">*Faculty: Irina Kalatskaya*</font>

**Lab Practical:**

* First step is to update your Reactome FI to an earlier fully functional version: reactomeFI-4.0.1

* [Zip Folder containing reactomeFI-app-4.0.1-beta.jar](https://github.com/bioinformatics-ca/2015_workshops/raw/master/HTBio/Reactome_FI-4.0.1.zip)

[HT-Biology2015\_Day5\_IntegratedAssignment.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_part2_IntegratedAssignment.pdf)  
[HT-Biology2015\_Day5\_IntegratedAssignmentAnswers.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/Pathways2015_part2_IntegratedAssignmentAnswers.pdf)  

**Input Data sets:**
*  [STAD\_MutSig.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/STAD_MutSig.txt) (named GastricCancer\_mutsig.txt in the instructions)

<hr>
Day 7
-----

<hr>
### Module 17: Gene Regulation Network Analysis

<font color="green">*Faculty: Michael Hoffman*</font>

**Lecture:**

[HT-Biology2015\_Module17.pdf](https://bioinformatics.ca/htbiology2015module17pdf)  
[HT-Biology2015\_Module17.ppt](https://bioinformatics.ca/htbiology2015module17pptx)  
[HT-Biology2015\_Module17.mp4](https://bioinformatics.ca/htbiology2015module17mp4)  

**Lab Practical:**

[HT-Biology2015\_Module17\_Lab.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/HT-Biology2015_Module17_Lab.pdf)   
[HT-Biology2015\_Module17\_Lab\_Addenda.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/HT-Biology2015_Module17_Lab_Addenda.pdf)  

-  [Nature Protocols paper by Ma, Bailey, and Noble:](http://www.nature.com/nprot/journal/v9/n6/full/nprot.2014.083.html)  

**Links:**

-   [ENCODE Project](http://encodeproject.org/)
-   [UCSC ENCODE file search](http://encodeproject.org/cgi-bin/hgFileSearch?db=hg19)
-   [Galaxy](https://usegalaxy.org/)
-   [MEME Suite](http://meme.nbcr.net/)

**Precomputed results:**

* A549 c-Myc

The results provided during the workshop do not work outside the workshop. Archived results are in [AppMEMECHIP_4.10.114306204728401779362043.tar.gz](https://github.com/bioinformatics-ca/2015_workshops/raw/master/pathways/File-AppMEMECHIP_4.10.114306204728401779362043.tar.gz).

Tips, tricks, and resources
---------------------------

### Data Sets from Entire Workshops

* [Reference Genome for HT-seq](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_reference.zip)
* [Module 2/7/HT-seq Integrated Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip)
* [Module 3 Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module3_data.zip)
* [Module 5 Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_data.zip)
* [Module 6 Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_data.zip)
* [Reference for RNA-seq Modules 8-11](https://xfer.genome.wustl.edu/gxfer1/project/gms/testdata/bams/brain_vs_uhr_w_ercc/downsampled_5pc_chr22/chr22_ERCC92.tar.gz)
* [Module 8-11 Data](https://github.com/griffithlab/rnaseq_tutorial/wiki/RNAseq-Data)
* [RNA-seq Integrated Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/RNA_data/integrated_assignment_data.zip)
* [RNA-seq Integrated Reference](http://www.hpc4health.ca/sites/default/files/cbw/2015/RNA_data/integrated_assignment_refs.zip)

### Results from Instructor's Instance on Amazon

* [Module 2 (HT-seq) result](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_result.tar.gz)
* [Module 5 (HT-seq) result](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_result.tar.gz)
* [Module 6 (HT-seq) result](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_result.tar.gz)
* [Module 8-11 (RNA-seq) result](http://www.hpc4health.ca/sites/default/files/cbw/2015/RNA_data/rnaseq_result.tar.gz)


### Tools with installation instructions on our Amazon server

Instructions for installing the tools used in the workshops can be found [here](http://bioinformatics-ca.github.io/install_tools_2016/).


### Launching CBW AMI

[Steps to launch CBW public AMI](https://bioinformatics-ca.github.io/bioinformatics_for_cancer_genomics_AMI_2015/)

**AMI ID**: ami-b9a253d2
**AMI Name**: CBW workshops 2015

### Bioinformatics discussion Q&A forums

-   [Biostars](http://biostars.org)
-   [Seqanswers](http://seqanswers.org)

### Genomics programming interfaces

-   [PyVCF](https://github.com/jamescasbon/PyVCF)
-   [pysam](https://code.google.com/p/pysam/)

### Toolkits

-   [vcftools](http://vcftools.sourceforge.net/)
-   [samtools](http://samtools.sourceforge.net/)
-   [bedtools](https://github.com/arq5x/bedtools2)
-   [GATK](http://www.broadinstitute.org/gatk/)
