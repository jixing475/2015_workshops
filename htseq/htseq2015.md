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

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions\_HT-seq](Laptop_Setup_Instructions_HT-seq "wikilink")

Pre-Workshop Tutorials
----------------------

1) <b>R Preparation tutorials:</b> You are expected to have completed the following tutorials in R beforehand. The tutorial should be very accessible even if you have never used R before.

-   The [CBW **R** tutorial](R_tutorial "wikilink") or Quick and Dirty Guide to R (up to and including Descriptive Statistics) at <http://ww2.coastal.edu/kingw/statistics/R-tutorials/text/quick&dirty_R_revised_080715.txt>
-   The [R command cheat sheet](Media:Short-refcard.pdf "wikilink")

2) <b>UNIX Preparation tutorials:</b> Please complete tutorials \#1-3 on UNIX at <http://www.ee.surrey.ac.uk/Teaching/Unix/>

-   [Unix Cheat sheet](http://www.rain.org/~mkummel/unix.html)

3) <b>IGV Tutorial:</b> Review how to use IGV Genome Browser if you have not used this tool before.
\* [IGV Tutorial practice](Media:IGV_Tutorial.pdf "wikilink")

**Data Set for IGV:**

-   Chromosome 21: 19,000,000-20,000,000
-   [HCC1143.normal.21.19M-20M.bam](Media:HCC1143.normal.21.19M-20M.bam "wikilink")
-   [HCC1143.normal.21.19M-20M.bam.bai](Media:HCC1143.normal.21.19M-20M.bam.bai "wikilink")

<hr>
Pre-Workshop Readings
---------------------

![](txt.gif "fig:txt.gif")Using cloud computing infrastructure with CloudBioLinux, CloudMan, and Galaxy [PMID22700313.pdf](Media:PMID22700313.pdf "wikilink")

![](txt.gif "fig:txt.gif")Integrative Genomics Viewer (IGV): high-performance genomics data visualization and exploration [PMID22517427.pdf](Media:PMID22517427.pdf "wikilink")

![](txt.gif "fig:txt.gif") Genome structural variation discovery and genotyping [PMID21358748.pdf](Media:PMID21358748.pdf "wikilink")

![](txt.gif "fig:txt.gif") A survey of sequence alignment algorithms for next-generation sequencing [PMC2943993.pdf](Media:PMC2943993.pdf "wikilink")

![](txt.gif "fig:txt.gif") Genotype and SNP calling from next-generation sequencing data [PMC3593722.pdf](Media:PMC3593722.pdf "wikilink")

<hr>
Logging into the Amazon cloud
-----------------------------

-   These instructions will <b>ONLY</b> be valid in the classroom and not from home. The Cloud will be set up for the class.
-   We have set up 40 nodes on the Amazon cloud - one for each student. In order to log in to your node, you will need a security certificate.

`If you plan on using Linux or Mac OS X, please download this `[`certificate`](Media:CBWNY.pem "wikilink")`. `

`Otherwise if you plan on using Windows (with Putty and Winscp), please download this `[`certificate`](Media:CBWNY.ppk "wikilink")`. `

-   We have set up DNS shortcuts to the Amazon nodes so that we don't have to remember long hostnames like ec2-50-19-168-121.compute-1.amazonaws.com. Instead, we'll use the following hostnames: cbw\#.dyndns.info where \# is your assigned student number (01 - 40).

<!-- -->

-   On the cloud, we're going to use the default username: ubuntu

### Logging in with ssh (Mac/Linux)

<font color="red">**Logging in**</font>

-   Make sure the permissions on your certificate are secure. Use chmod on your downloaded certificate:

`chmod 600 CBWNY.pem`

-   To log in to the node, use the -i command line argument to specify your certificate:

`ssh -i CBWNY.pem ubuntu@cbw#.dyndns.info`

(where \# is your assigned student number)

<font color="red">**Copying files to your computer**</font>

-   To copy files from a node, use scp (on your laptop) in a similar fashion (in this case to copy a file called nice\_alignments.bam):

`scp -i CBWNY.pem ubuntu@cbw#.dyndns.info:workspace/nice_alignments.bam .`

-   Everything created in your workspace on the cloud is also available by a web server on your cloud instance. Simply go to the following in your browser:

[[`http://cbw#.dyndns.info/`](http://cbw#.dyndns.info/)](http://cbw#.dyndns.info/)

### Logging in with Putty (Windows)

<font color="red">**Logging in**</font>

To configure Putty, start Putty and do the following:

-   Fill in the "Host name" field with **cbw\#.dyndns.info** (where \# is your assigned student number)

<img src="Putty_Basic_Options.png" title="Putty Basic Options" alt="Putty Basic Options" width="300" />

-   In the left hand categories, choose Data under the Connection category. Write **ubuntu** in the auto-login username field.

<img src="Putty_Data_Options.png" title="Putty Data Options" alt="Putty Data Options" width="300" />

-   In the left hand categories, click on the + next to SSH in the Connection category. Click on Auth. In the private-key file for authentication field, hit browse and find the **CBWNY.ppk** certificate that you downloaded above.

<img src="Putty_Auth_Options.png" title="Putty Auth Options" alt="Putty Auth Options" width="300" />

-   In the left hand categories, click on Session. Write "Amazon node" in the Saved Sessions field and click save.

**Now that Putty is configured**, all you have to do is start putty and double-click on "Amazon node" to login.

<font color="red">**Copying files to your computer**</font>

To configure WinScp, start WinScp and do the following:

1.  Click "New" on the right-hand buttons.
2.  Fill in the "Host name" field with **cbw\#.dyndns.info** (where \# is your assigned student number)
3.  Fill in the "User name" field with **ubuntu**.
4.  Leave the password field empty
5.  Press the "..." button in the "private key file" field to browse for the **CBWNY.ppk** certificate.
6.  Click the "Save..." button and write "Amazon node" in the "Save session as" field.

<img src="WinSCP Login Options.png" title="WinSCP Login Options" alt="WinSCP Login Options" width="300" />

**Now that WinScp is configured**, all you have to do is start WinScp and double-click on "Amazon node" to start copying files.

### File system layout

When you log in, you'll notice that you have two directories: **CourseData** and **workspace**.

-   The <font color="red">**CourseData**</font> directory will contain the files that you'll need to complete your lab assignments.

<!-- -->

-   The <font color="red">**workspace**</font> directory is where we will keep our temporary files and analysis results.

<hr>
Day 1
-----

<hr>
### Welcome

<font color="green">*Faculty: Michelle Brazas*</font>

<hr>
### Module 1: Overview of HT-sequencing & Cloud Computing

<font color="green">*Faculty: Zhibin Lu*</font>

Lecture: ![](pdf.gif "fig:pdf.gif") [Cloud Resources and Logging into the Cloud](Media:CBW_HT-seq_Module1_Cloud_Lu_Ouellette_2015.pdf "wikilink")
![](CloudTripping.png "fig:CloudTripping.png")

<hr>
### Module 2: Reference-guided Genome Alignment

<font color="green">*Faculty: Matei David*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [HT-seq2015\_Module2.pdf](Media:HT-seq2015_Module2.pdf "wikilink")

**Lab Practical:**
![](txt.gif "fig:txt.gif")[Reference Guided Genome Alignment Lab practical](Reference_Alignment_Lab_2015 "wikilink")

![](txt.gif "fig:txt.gif")[Discussion questions](Reference-guided_Alignment_Discussion_Questions_2015 "wikilink")
**Data set:**
After the workshop: You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip). You may also need download the [reference genome](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_reference.zip) if you do not have one to do the lab practice on your own machine.
**Programs used:**
\* [samtools](http://samtools.sourceforge.net/)

`* `[`BWA`](http://bio-bwa.sourceforge.net/)
`* `[`Bowtie2`](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml)
`* `[`Picard`](http://broadinstitute.github.io/picard/index.html)
`* `[`GATK`](http://www.broadinstitute.org/gsa/wiki/index.php/The_Genome_Analysis_Toolkit)
`* `[`FastQC`](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
`* `[`SeqTK`](https://github.com/lh3/seqtk)
`* `[`IGV`](http://www.broadinstitute.org/igv/)

**Links to Additional Resources:**
\* [SEQanswers bioinformatics forum](http://seqanswers.com/forums/forumdisplay.php?f=18)

`* `[`SAM/BAM` `file` `format` `specification`](http://samtools.sourceforge.net/SAM1.pdf)
`* `[`Paired` `end` `vs` `mate` `pair` `reads`](Media:Paired_end_and_mate_pair.pdf "wikilink")
`* `[`Base` `qualities` `vs` `mapping` `qualities`](http://maq.sourceforge.net/qual.shtml)
`* `[`The` `decoy` `genome`](http://www.cureffi.org/2013/02/01/the-decoy-genome/)
`* `[`FastQC` `Good/Bad` `Examples`](http://www.slideshare.net/cursoNGS/ngs-qc-granadajun2011)

<hr>
### Module 3: Data Visualization

<font color="green">*Faculty: Sorana Morrissy*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [HT-seq2015\_Module3.pdf](Media:HT-seq2015_Module3.pdf "wikilink")

**Lab Practical:**
\* ![](txt.gif "fig:txt.gif")[Using the IGV to visualize HTS datasets](Using_the_IGV_to_visualize_HTS_datasets "wikilink")
**Programs used:**
\* [igv](http://www.broadinstitute.org/igv/)

<hr>
### Module 4: De Novo Assembly

<font color="green">*Faculty: Jared Simpson*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [HT-seq2015\_Module4.pdf](Media:HT-seq2015_Module4.pdf "wikilink")

<hr>
### Integrated Assignment for Day 1

<font color="green">*Faculty: Sorana Morrissy*</font>
Review the techniques learned in Modules 1-3. An additional dataset (fastq file) has been provided here for this purpose.

`'''Files are in the following directory of the cloud instance: `***`~/CourseData/HT_data/Module2/`***` '''`
`* NA12891_CBW_chr1_R1.fastq.gz`
`* NA12891_CBW_chr1_R2.fastq.gz`
`* NA12892_CBW_chr1_R1.fastq.gz`
`* NA12892_CBW_chr1_R2.fastq.gz`

<b>`# Create a directory to work in:`
`# this is where we'll place all of our output files`</b>
`mkdir -p ~/workspace/Integrated_assignment`
`cd ~/workspace/Integrated_assignment`
<b>`# Erase any files that might already be there`</b>
`rm *`
<b>`# Create symbolic links for all of the files contained in the Module2 directory`
`# this includes the hg19 genome, the FASTQ files, and dbSNP annotation`</b>
`ln -s ~/CourseData/HT_data/Module2/* .`
`ls`

Task list:

1.  Align the raw data to the human reference genome.
2.  Sort the reads and perform duplicate removal.
3.  Index the sorted bam file.
4.  Perform indel cleaning.
5.  Visualize the alignments.

Discussion/Questions:

1.  Explain the purpose of each step.
2.  Which software tool can be used for each step.

Integrated Assignment: ![](txt.gif "fig:txt.gif") [ IA\_Question\_Answers\_2015.txt](Media:_IA_Question_Answers_2015.txt "wikilink")

<hr>
Day 2
-----

<hr>
### Module 5: Small variant calling & annotation

<font color="green">*Faculty: Guillaume Bourque*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [HT-seq2015\_Module5.pdf](Media:HT-seq2015_Module5.pdf "wikilink")

<img src="CornerPiece.gif" title="CornerPiece.gif" alt="CornerPiece.gif" width="400" />

**Lab Practical:**

![](txt.gif "fig:txt.gif") [Lab directions](Genome_Variation_Lab_2015 "wikilink")

![](pdf.gif "fig:pdf.gif") [VCF format](https://samtools.github.io/hts-specs/VCFv4.2.pdf)

<font color="red">**Pro-tip:**</font> A great resource for putting together a GATK-based variant calling pipeline is the [GATK Best practices](http://www.broadinstitute.org/gatk/guide/topic?name=best-practices) page. This page will guide you in your quest to produce the best variant calls possible using GATK.

<font color="red">**Pro-tip 2:**</font> Another useful program for generating summary statistics on vcf files, filtering vcf files, and comparing multiple vcf files is [**vcftools**](http://vcftools.sourceforge.net/).
**Data set:**
After the workshop: You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_data.zip) to your local machine and work from there.
**Programs used:**
\* [GATK](http://www.broadinstitute.org/gsa/wiki/index.php/The_Genome_Analysis_Toolkit)

`* `[`snpEff`](http://snpeff.sourceforge.net/)
`* `[`IGV`](http://www.broadinstitute.org/igv/)

<hr>
### Module 6: Structural variation calling

<font color="green">*Faculty: Guillaume Bourque*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [HT-seq2015\_Module6.pdf](Media:HT-seq2015_Module6.pdf "wikilink")
**Lab Practical:**
![](txt.gif "fig:txt.gif") [Lab directions](Structural_Variant_Lab "wikilink")
**Data set:**
After the workshop: You can download the data set from [here](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_data.zip) to your local machine and work from there.

**Programs used:**
\* [Lumpy-SV](https://github.com/arq5x/lumpy-sv)

`* `[`IGV`](http://www.broadinstitute.org/igv/)

<hr>
### Module 7: Bringing it all Together: Galaxy

<font color="green">*Faculty: Francis Ouellette*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [HT-seq2015\_Module7.pdf](Media:‎‎HT-seq2015_Module7.pdf "wikilink")
**Lab Practical:**
![](pdf.gif "fig:pdf.gif") [HT-seq\_2015\_Module7\_Lab.pdf](Media:HT-seq_2015_Module7_Lab.pdf‎‎ "wikilink")
<b>Dataset for the Galaxy lab:</b>

In Galaxy, under Get Data and Upload File in the URL box:

`NA12878_CBW_chr1_R1.fastq.gz`
[`http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R1.fastq.gz`](http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R1.fastq.gz)
`NA12878_CBW_chr1_R2.fastq.gz`
[`http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R2.fastq.gz`](http://cbwxx.dyndns.info/module2/NA12878_CBW_chr1_R2.fastq.gz)
`hg19_chr1.fa`
[`http://cbwxx.dyndns.info/module7/hg19_chr1.fa`](http://cbwxx.dyndns.info/module7/hg19_chr1.fa)
`dbSNP_135_chr1.vcf.gz`
[`http://cbwxx.dyndns.info/module2/dbSNP_135_chr1.vcf.gz`](http://cbwxx.dyndns.info/module2/dbSNP_135_chr1.vcf.gz)

**Note:** xx is your student number.

Galaxy workflow part 1 (cloud): [Galaxy-Workflow-CBW Galaxy lab part1 Alignment Variant calling.ga](Media:Galaxy-Workflow-CBW_Galaxy_lab_part1_Alignment_Variant_calling.ga "wikilink")
Galaxy workflow part 2 (main instance): [Galaxy-Workflow-CBW Galaxy lab part2 VariantFiltration Annotation.ga](Media:Galaxy-Workflow-CBW_Galaxy_lab_part2_VariantFiltration_Annotation.ga "wikilink")
**What you need for the lab:**

-   Galaxy public server: [<https://usegalaxy.org/>](https://usegalaxy.org/)

You will need an account on Galaxy so that you can run tools in their environment.
**Galaxy Resources:**

`* `[`galaxyproject.org:` `Galaxy` `home` `page`](http://galaxyproject.org)
`* `[`usegalaxy.org:` `main` `Galaxy` `public` `server`](http://usegalaxy.org)
`* `[`getgalaxy.org:` `source` `for` `installing` `local` `Galaxy`](http://getgalaxy.org)
`* `[`usegalaxy.org/cloud:` `use` `galaxy` `in` `the` `cloud`](http://usegalaxy.org/cloud)
`* Example of a Galaxy pipeline (we used for an RNASeq lab last year. Save file as:`[ `Galaxy-Workflow-Module_5_workflow_from_Emilie_Chautard_and_Francis.ga`](Media:‎‎Galaxy-Workflow-Module_5_workflow_from_Emilie.ga "wikilink")` `
`* `[`Galaxy` `101` `worked` `example`](https://main.g2.bx.psu.edu/u/aun1/p/galaxy101)
`* `[`Galaxy` `servers` `throughout` `the` `world`](http://wiki.galaxyproject.org/PublicGalaxyServers)
`* `[`Published` `(read:` `Public)` `pages`](https://main.g2.bx.psu.edu/page/list_published)

Tips, tricks, and resources
---------------------------

### Data Sets from Entire Workshops

`* `[`Reference` `Genome` `for` `HT-seq`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_reference.zip)
`* `[`Module` `2/7/HT-seq` `Integrated` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_data.zip)
`* `[`Module` `5` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_data.zip)
`* `[`Module` `6` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_data.zip)

### Results from Instructor's Instance on Amazon

`* `[`Module` `2` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module2_result.tar.gz)
`* `[`Module` `5` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module5_result.tar.gz)
`* `[`Module` `6` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/HT_data/module6_result.tar.gz)

### Tools with installation instructions on our Amazon server

[Tools Used in Our Workshops](Tools_Used_in_Our_Workshops "wikilink")

### Launching CBW AMI

[Steps to launch CBW public AMI](Launching_CBW_AMI "wikilink")

-   **AMI ID**: ami-b9a253d2
-   **AMI Name**: CBW workshops 2015
