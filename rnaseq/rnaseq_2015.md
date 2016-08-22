---
layout: post2
permalink: /rnaseq_analysis_2015/
title: RNASeq Analysis 2015 Student Page
header1: Informatics for RNA-Seq Analysis 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Laptop Setup Instructions
-------------------------

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions\_RNA-seq](Laptop_Setup_Instructions_RNA-seq "wikilink")

Pre-Workshop Tutorials
----------------------

1) <b>R Preparation tutorials:</b> You are expected to have completed the following tutorials in R beforehand. The tutorial should be very accessible even if you have never used R before.

-   R Tutorial at <http://www.cyclismo.org/tutorial/R/> (Please complete up to and including 5. Basic Plots)
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

Integrative Genomics Viewer (IGV): high-performance genomics data visualization and exploration [PMID22517427.pdf](Media:PMID22517427.pdf "wikilink")

Differential gene and transcript expression analysis of RNA-seq experiments with TopHat and Cufflinks [PMC3334321.pdf](Media:PMC3334321.pdf "wikilink")

ENCODE RNA-seq Standards [ENCODE\_RNA-seq\_standards\_v1.0.pdf](Media:ENCODE_RNA-seq_standards_v1.0.pdf "wikilink")

Methods to study splicing from high-throughput RNA sequencing data [PMID24549677.pdf](Media:PMID24549677_Alamancos_SplicingRNA-seq.pdf "wikilink")

Differential analysis of gene regulation at transcript resolution with RNA-seq [PMC3869392.pdf](Media:PMC3869392_Trapnell_CuffDiff2.pdf "wikilink")

A comprehensive assessment of RNA-seq accuracy, reproducibility and information content by the Sequencing Quality Control consortium [PMC4321899.pdf](Media:nihms604610.pdf "wikilink")

Recurrent chimeric RNAs enriched in human prostate cancer identified by deep sequencing [PMC3107329](Media:pnas.201100489.pdf "wikilink")

<hr>
Logging into the Amazon cloud
-----------------------------

-   This will ONLY occur once we are in the classroom as it costs to have these servers running. Instructions will be provided in class.
-   We have set up 40 instances on the Amazon cloud - one for each student. In order to log in to your instance, you will need a security certificate.
    -   If you plan on using **Linux** or **Mac OS X**, please download this [CBW.pem](Media:CBW.pem "wikilink").
    -   If you plan on using **Windows** (with Putty and Winscp), please download this [CBW.ppk](Media:CBW.ppk "wikilink").

<!-- -->

-   We have set up DNS shortcuts to the Amazon nodes so that we don't have to remember long hostnames like ec2-50-19-168-121.compute-1.amazonaws.com. Instead, we'll use the following hostnames: cbw\#.dyndns.info where \# is your assigned student number (01 - 40).

<!-- -->

-   On the cloud, we're going to use the default username: **ubuntu**

### Logging in with ssh (Mac/Linux)

<font color="red">**Logging in**</font>

-   Make sure the permissions on your certificate are secure. Use chmod on your downloaded certificate:

`chmod 600 CBW.pem`

-   To log in to the node, use the -i command line argument to specify your certificate:

`ssh -i CBW.pem ubuntu@cbw##.dyndns.info`

(where \# is your assigned student number. Your student number is the number on the participant list. If your number less than 10, please add 0 in front of it.)

<font color="red">**Copying files to your computer**</font>

-   To copy files from a node, use scp in a similar fashion (in this case to copy a file called nice\_alignments.bam):

`scp -i CBW.pem ubuntu@cbw##.dyndns.info:workspace/nice_alignments.bam .`

-   Everything created in your workspace on the cloud is also available by a web server on your cloud instance. Simply go to the following in your browser:

`http://cbw##.dyndns.info/`

### Logging in with Putty (Windows)

<font color="red">**Logging in**</font>

To configure Putty, start Putty and do the following:

-   Fill in the "Host name" field with **cbw\#\#.dyndns.info** (where \# is your assigned student number. Your student number is the number on the participant list. If your number less than 10, please add 0 in front of it.)

<img src="Putty_Basic_Options.png" title="Putty Basic Options" alt="Putty Basic Options" width="300" />

-   In the left hand categories, choose Data under the Connection category. Write **ubuntu** in the auto-login username field.

<img src="Putty_Data_Options.png" title="Putty Data Options" alt="Putty Data Options" width="300" />

-   In the left hand categories, click on the + next to SSH in the Connection category. Click on Auth. In the private-key file for authentication field, hit browse and find the **CBW.ppk** certificate that you downloaded above.

<img src="Putty_Auth_Options.png" title="Putty Auth Options" alt="Putty Auth Options" width="300" />

-   In the left hand categories, click on Session. Write "Amazon node" in the Saved Sessions field and click save.

**Now that Putty is configured**, all you have to do is start putty and double-click on "Amazon node" to login.

<font color="red">**Copying files to your computer**</font>

To configure WinScp, start WinScp and do the following:

1.  Click "New" on the right-hand buttons.
2.  Fill in the "Host name" field with **cbw\#\#.dyndns.info** (where \# is your assigned student number)
3.  Fill in the "User name" field with **ubuntu**.
4.  Leave the password field empty
5.  Press the "..." button in the "private key file" field to browse for the **CBW.ppk** certificate.
6.  Click the "Save..." button and write "Amazon node" in the "Save session as" field.

<img src="WinSCP Login Options.png" title="WinSCP Login Options" alt="WinSCP Login Options" width="300" />

**Now that WinScp is configured**, all you have to do is start WinScp and double-click on "Amazon node" to start copying files.

### File system layout

When you log in, you'll notice that you have two directories: **CourseData** and **workspace**.

-   The <font color="red">**CourseData**</font> directory will contain the files that you'll need to complete your lab assignments.

<!-- -->

-   The <font color="red">**workspace**</font> directory is where we will keep our temporary files and analysis result.

<hr>
R Review Session
----------------

[RNA-seq2015\_RReview.pdf](Media:RNA-seq2015_RReview.pdf "wikilink")
![](R.gif "fig:R.gif") [RNA-seq2015\_RReviewScripts.R](Media:RNA-seq2015_RReviewScripts.R "wikilink")

Day 1
-----

<hr>
#### Welcome

<font color="green">*Faculty: Michelle Brazas*</font>

'''Welcome slides: ''' [RNA-seq2015\_Welcome.pdf](Media:RNA-seq2015_Welcome.pdf "wikilink")
**Course Q/A Forum:** \[<http://todaysmeet.com/RNA-seq2015>

[`http://todaysmeet.com/RNA-seq2015`](http://todaysmeet.com/RNA-seq2015)`] (active during the course only)`

<hr>
#### Module 0: Introduction to cloud computing

<font color="green">*Faculty: Malachi and Obi Griffith*</font>

'''Lecture slides: ''' [RNASeq\_Module0\_AmazonPreTutorial.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module0_AmazonPreTutorial.pdf)

<hr>
#### Module 1: Introduction to RNA sequencing and analysis

<font color="green">*Faculty: Malachi Griffith*</font>

**Lecture slides:**
[RNASeq\_Module1\_Lecture.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module1_Lecture.pdf)

**Lab introduction slides:**
[RNASeq\_Module1\_Tutorial.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module1_Tutorial.pdf)

**Lab practical:**
[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 1 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Installation)

<hr>
#### Module 2: RNA-seq alignment and visualization

<font color="green">*Faculty: Obi Griffith*</font>

**Lecture slides:**
[RNASeq\_Module2\_Lecture.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module2_Lecture.pdf)

**Lab introduction slides:**
[RNASeq\_Module2\_Tutorial.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module2_Tutorial.pdf)

**Lab practical:**
[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 2 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Adapter-Trim)

<hr>
#### Integrated Assignment - Day 1

<font color="green">*Faculty: Fouad Yousif*</font>

**Paper for Integrated Assignment:**
Recurrent chimeric RNAs enriched in human prostate cancer identified by deep sequencing [PMC3107329](Media:pnas.201100489.pdf "wikilink")

**Assignment Questions:**
[Integrated Assignment](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment)

**Answer Key:**
[Integrated Assignment Answers](https://github.com/griffithlab/rnaseq_tutorial/wiki/Integrated-Assignment-Answers)

<hr>
Day 2
-----

<hr>
#### Module 3: Expression and Differential Expression

<font color="green">*Faculty: Obi Griffith*</font>

**Lecture slides:**
[RNASeq\_Module3\_Lecture.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module3_Lecture.pdf)

**Lab introduction slides:**
[RNASeq\_Module3\_Tutorial.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module3_Tutorial.pdf)

**Lab practical:**
[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 3 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Expression)

<hr>
#### Module 4: Isoform discovery and alternative expression

<font color="green">*Faculty: Malachi Griffith*</font>

**Lecture slides:**
[RNASeq\_Module4\_Lecture.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module4_Lecture.pdf)

**Lab introduction slides:**
[RNASeq\_Module4\_Tutorial.pdf](https://github.com/griffithlab/rnaseq_tutorial/wiki/LectureFiles/cbw/2015/RNASeq_Module4_Tutorial.pdf)

**Lab practical:**
[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki) - [Module 4 Tutorial](https://github.com/griffithlab/rnaseq_tutorial/wiki/Reference-Guided-Transcript-Assembly)

<hr>
### Keeping Up-to-date with RNA-seq Analysis Developments

For additional resources, tutorials, future directions, and more please refer to the RNA-seq wiki:
[<http://www.rnaseq.wiki>](http://www.rnaseq.wiki)

Tools with installation instruction in our Amazon server
--------------------------------------------------------

<https://github.com/griffithlab/rnaseq_tutorial/wiki/Installation>

[Tools Used in Our Workshops](Tools_Used_in_Our_Workshops "wikilink")

Data Sets from Workshop
-----------------------

`* `[`RNA-seq` `Integrated` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/RNA_data/integrated_assignment_data.zip)
`* `[`RNA-seq` `Integrated` `Reference`](http://www.hpc4health.ca/sites/default/files/cbw/2015/RNA_data/integrated_assignment_refs.zip)

Results from Instructor's Instance on Amazon
--------------------------------------------

`* `[`RNA-seq` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/RNA_data/rnaseq_result.tar.gz)

Launching CBW AMI
-----------------

[Steps to launch CBW public AMI](Launching_CBW_AMI "wikilink")

-   **AMI ID**: ami-b9a253d2
-   **AMI Name**: CBW workshops 2015
