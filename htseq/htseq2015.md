---
layout: post2
permalink: /high-throughput_sequencing_2015/
title: High-Throughput Sequencing 2015 Student Page
header1: Informatics on High-Throughput Data 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Laptop Setup Instructions
-------------------------

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions](https://github.com/bioinformatics-ca/2015_workshops/blob/master/htseq/laptop_instructions.md)

Pre-Workshop Tutorials
----------------------

1) **R Preparation tutorials**: You are expected to have completed the following tutorials in **R** beforehand. The tutorial should be very accessible even if you have never used **R** before.

* The [R Tutorial](http://www.cyclismo.org/tutorial/R/) up to and including 5. Basic Plots
* The [R command cheat sheet](../../resources/R_Short-refcard.pdf)

2) **UNIX Preparation tutorials**: 

* [UNIX Bootcamp](https://github.com/griffithlab/rnaseq_tutorial/wiki/Unix-Bootcamp)
* Tutorials #1-3 on [UNIX Tutorial for Beginners](http://www.ee.surrey.ac.uk/Teaching/Unix/)
* [Unix Cheat sheet](http://www.rain.org/~mkummel/unix.html) 

3) **IGV Tutorial**: Review how to use IGV Genome Browser if you have not used this tool before.

* The [IGV Tutorial](http://bioinformatics-ca.github.io/bioinformatics_for_cancer_genomics_IGV_lab_2016/)

<hr>
Pre-Workshop Readings
---------------------

[Using cloud computing infrastructure with CloudBioLinux, CloudMan, and Galaxy](http://www.ncbi.nlm.nih.gov/pubmed/22700313)

[Integrative Genomics Viewer (IGV): high-performance genomics data visualization and exploration](http://www.ncbi.nlm.nih.gov/pubmed/22517427)

[Genome structural variation discovery and genotyping](http://www.ncbi.nlm.nih.gov/pubmed/21358748)

[A survey of sequence alignment algorithms for next-generation sequencing](http://www.ncbi.nlm.nih.gov/pubmed/20460430)

[Genotype and SNP calling from next-generation sequencing data](http://www.ncbi.nlm.nih.gov/pubmed/21587300)

<hr>
Logging into the Amazon cloud
-----------------------------

Instructions can be found [here](http://bioinformatics-ca.github.io/logging_into_the_Amazon_cloud/).
 
-   These instructions will ONLY be relevant in class, as the Cloud will not be accessible from home in advance of the class.

<hr>
Day 1
-----

<hr>
### Welcome

<font color="green">*Faculty: Michelle Brazas*</font>

<hr>
### Module 1: Overview of HT-sequencing & Cloud Computing

<font color="green">*Faculty: Zhibin Lu*</font>

**Lecture:** 

[HT-seq2015\_Module1.pdf](https://bioinformatics.ca/htseq2015module1pdf)  
[HT-seq2015\_Module1.ppt](https://bioinformatics.ca/htseq2015module1ppt)  
[HT-seq2015\_Module1.mp4](https://bioinformatics.ca/htseq2015module1mp4)  

![http://xkcd.com/908/](https://imgs.xkcd.com/comics/the_cloud.png)

<hr>
### Module 2: Reference-guided Genome Alignment

<font color="green">*Faculty: Matei David*</font>

**Lecture:**

[HT-seq2015\_Module2.pdf](https://bioinformatics.ca/htseq2015module2pdf)  
[HT-seq2015\_Module2.mp4](https://bioinformatics.ca/htseq2015module2mp4)

**Lab Practical:**

[Reference Guided Genome Alignment Lab practical](http://bioinformatics-ca.github.io/high-throughput_sequencing_mod2_lab_2015/)

[Discussion questions](https://github.com/bioinformatics-ca/2015_workshops/blob/master/htseq/htseq_mod2_disc.md)

**Data set:**

After the workshop: You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip). You may also need download the [reference genome](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_reference.zip) if you do not have one to do the lab practice on your own machine.

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

<font color="green">*Faculty: Sorana Morrissy*</font>

**Lecture:**

[HT-seq2015\_Module3.pdf](https://bioinformatics.ca/htseq2015module3pdf)  
[HT-seq2015\_Module3.ppt](https://bioinformatics.ca/htseq2015module3ppt)  
[HT-seq2015\_Module3.mp4](https://bioinformatics.ca/htseq2015module3mp4)  

**Lab Practical:**

* [Using the IGV to visualize HTS datasets](http://bioinformatics-ca.github.io/bioinformatics_for_cancer_genomics_IGV_lab_2016/)

**Programs used:**

* [igv](http://www.broadinstitute.org/igv/)

<hr>
### Module 4: De Novo Assembly

<font color="green">*Faculty: Jared Simpson*</font>

**Lecture:**

[HT-seq2015\_Module4.pdf](https://bioinformatics.ca/htseq2015module4pdf)  
[HT-seq2015\_Module4.mp4](https://bioinformatics.ca/htseq2015module4mp4)  

<hr>
### Integrated Assignment for Day 1

<font color="green">*Faculty: Sorana Morrissy*</font>

Review the techniques learned in Modules 1-3. An additional dataset (fastq file) has been provided here for this purpose.

```
# Create a directory to work in:
# this is where we'll place all of our output files
mkdir -p ~/workspace/Integrated_assignment
cd ~/workspace/Integrated_assignment
# Erase any files that might already be there
rm *
# Create symbolic links for all of the files contained in the Module2 directory
# this includes the hg19 genome, the FASTQ files, and dbSNP annotation
ln -s ~/CourseData/HT_data/Module2/* .
ls
```

Task list:

1.  Align the raw data to the human reference genome.
2.  Sort the reads and perform duplicate removal.
3.  Index the sorted bam file.
4.  Perform indel cleaning.
5.  Visualize the alignments.

Discussion/Questions:

1.  Explain the purpose of each step.
2.  Which software tool can be used for each step.

Integrated Assignment:  [ IA\_Question\_Answers\_2015.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/htseq/integrated_assignment.txt)

<hr>
Day 2
-----

<hr>
### Module 5: Small variant calling & annotation

<font color="green">*Faculty: Guillaume Bourque*</font>

**Lecture:**

[HT-seq2015\_Module5.pdf](https://bioinformatics.ca/htseq2015module5pdf)  
[HT-seq2015\_Module5.ppt](https://bioinformatics.ca/htseq2015module5pptx)  
[HT-seq2015\_Module5.mp4](https://bioinformatics.ca/htseq2015module5mp4)  

**Lab Practical:**

[Lab directions](http://bioinformatics-ca.github.io/informatics_for_high-throughput_data_sequencing_2016_module5_lab/)

[VCF format](https://samtools.github.io/hts-specs/VCFv4.2.pdf)

<font color="red">**Pro-tip:**</font> A great resource for putting together a GATK-based variant calling pipeline is the [GATK Best practices](http://www.broadinstitute.org/gatk/guide/topic?name=best-practices) page. This page will guide you in your quest to produce the best variant calls possible using GATK.

<font color="red">**Pro-tip 2:**</font> Another useful program for generating summary statistics on vcf files, filtering vcf files, and comparing multiple vcf files is [**vcftools**](http://vcftools.sourceforge.net/).

**Data set:**

After the workshop: You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_data.zip) to your local machine and work from there.

**Programs used:**

* [GATK](http://www.broadinstitute.org/gsa/wiki/index.php/The_Genome_Analysis_Toolkit)  
* [snpEff](http://snpeff.sourceforge.net/)  
* [IGV](http://www.broadinstitute.org/igv/)  

<hr>
### Module 6: Structural variation calling

<font color="green">*Faculty: Guillaume Bourque*</font>

**Lecture:**

[HT-seq2015\_Module6.pdf](https://bioinformatics.ca/htseq2015module6pdf)  
[HT-seq2015\_Module6.ppt](https://bioinformatics.ca/htseq2015module6pptx)  
[HT-seq2015\_Module6.mp4](https://bioinformatics.ca/htseq2015module6mp4)

**Lab Practical:**

 [Lab directions](http://bioinformatics-ca.github.io/high-throughput_sequencing_mod6_lab_2015/)

**Data set:**

After the workshop: You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_data.zip) to your local machine and work from there.

**Programs used:**

* [Lumpy-SV](https://github.com/arq5x/lumpy-sv)  
* [IGV](http://www.broadinstitute.org/igv/)  

<hr>
### Module 7: Bringing it all Together: Galaxy

<font color="green">*Faculty: Francis Ouellette*</font>

**Lecture:**

[HT-seq2015\_Module7.pdf](https://bioinformatics.ca/htseq2015module7pdf)  
[HT-seq2015\_Module7.ppt](https://bioinformatics.ca/htseq2015module7pptx)  
[HT-seq2015\_Module7.mp4](https://bioinformatics.ca/htseq2015module7mp4)  

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

You will need an account on Galaxy so that you can run tools in their environment.

**Galaxy Resources:**

* [galaxyproject.org: Galaxy home page](http://galaxyproject.org)  
* [usegalaxy.org: main Galaxy public server](http://usegalaxy.org)  
* [getgalaxy.org: source for installing local Galaxy](http://getgalaxy.org)  
* [usegalaxy.org/cloud: use galaxy in the cloud](http://usegalaxy.org/cloud)  
* Example of a Galaxy pipeline (we used for an RNASeq lab last year. Save file as:[ Galaxy-Workflow-Module_5_workflow_from_Emilie_Chautard_and_Francis.ga](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/htseq/Galaxy-Workflow-Module_5_workflow_from_Emilie.ga)   
* [Galaxy 101 worked example](https://main.g2.bx.psu.edu/u/aun1/p/galaxy101)  
* [Galaxy servers throughout the world](http://wiki.galaxyproject.org/PublicGalaxyServers)  
* [Published (read: Public) pages](https://main.g2.bx.psu.edu/page/list_published)  

Tips, tricks, and resources
---------------------------

### Data Sets from Entire Workshops

* [Reference Genome for HT-seq](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_reference.zip)  
* [Module 2/7/HT-seq Integrated Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip)  
* [Module 5 Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_data.zip)  
* [Module 6 Data](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_data.zip)  

### Results from Instructor's Instance on Amazon

* [Module 2 result](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_result.tar.gz)  
* [Module 5 result](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_result.tar.gz)  
* [Module 6 result](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_result.tar.gz)  

### Tools with installation instructions on our Amazon server

Instructions for installing the tools used in the workshops can be found [here](http://bioinformatics-ca.github.io/install_tools_2016/).


### Launching CBW AMI

[Steps to launch CBW public AMI](https://bioinformatics-ca.github.io/bioinformatics_for_cancer_genomics_AMI_2015/)

-   **AMI ID**: ami-b9a253d2
-   **AMI Name**: CBW workshops 2015
