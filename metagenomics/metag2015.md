---
layout: post2
permalink: /analysis_of_metagenomic_data_2015/
title: Analysis of Metagenomic Data 2015 Student Page
header1: Analysis of Metagenomic Data 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Laptop Setup Instructions
-------------------------

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions\_Metagenomics](Laptop_Setup_Instructions_Metagenomics "wikilink")

<hr>
Pre-Workshop Tutorials
----------------------

1) <b>UNIX Preparation tutorials:</b> Please complete tutorials \#1-3 on UNIX at <http://www.ee.surrey.ac.uk/Teaching/Unix/>

-   [Unix Cheat sheet](http://www.rain.org/~mkummel/unix.html)

2) <b>Cytoscape Preparation tutorials:</b> Complete the introductory tutorial to Cytoscape: <http://opentutorials.cgl.ucsf.edu/index.php/Portal:Cytoscape3>

-   Introduction to Cytoscape3 - User Interface
-   Introduction to Cytoscape3 - Welcome Screen
-   Filtering and Editing in Cytoscape 3

<hr>
Pre-Workshop Readings
---------------------

![](pdf.gif "fig:pdf.gif") [Bioinformatics for the Human Microbiome Project](Media:Gevers2012-PLoSCB.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [﻿Microbiome science needs a healthy dose of scepticism](Media:Hanage2014-Nature.pdf "wikilink")
![](pdf.gif "fig:pdf.gif") [Methylotrophic methanogenic Thermoplasmata implicated in reduced methane emissions from bovine rumen](Media:ncomms2432.pdf "wikilink")

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

`http://cbw#.dyndns.info`

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

### Module 1: Introduction to Metagenomics and Cloud Computing

<font color="green">*Faculty: Robert Beiko*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Module1\_Lecture.pdf](Media:Metagenomics_2015_Module1_Lecture.pdf "wikilink")
![](ppt.gif "fig:ppt.gif") [Metagenomics\_2015\_Module1\_Lecture.ppt](Media:Metagenomics_2015_Module1_Lecture.ppt "wikilink")
![](pdf.gif "fig:pdf.gif") [Cloud Resources and Logging into the Cloud ](Media:Metagenomics_2015_Module1-Part2.pdf "wikilink")
**Lab Practical:**
![](pdf.gif "fig:pdf.gif") [Metagenomics Databases Lab practical](Media:RobTutorial.pdf "wikilink")
**Papers:**
![](pdf.gif "fig:pdf.gif") [Targeted Restoration of the Intestinal Microbiota with a Simple, Defined Bacteriotherapy Resolves Relapsing Clostridium difficile Disease in Mice](Media:_journal.ppat.1002995.pdf "wikilink")

![`pdf.gif`](pdf.gif "fig:pdf.gif")` `[`Analysis` `of` `membrane` `proteins` `in` `metagenomics:` `Networks` `of` `correlated` `environmental` `features` `and` `protein` `families`](Media:_960.pdf "wikilink")
![`pdf.gif`](pdf.gif "fig:pdf.gif")` `[`Ecological` `roles` `of` `dominant` `and` `rare` `prokaryotes` `in` `acid` `mine` `drainage` `revealed` `by` `metagenomics` `and` `metatranscriptomics`](Media:_ismej2014212a.pdf "wikilink")
![`pdf.gif`](pdf.gif "fig:pdf.gif")` `[`Metabolic` `signatures` `of` `bacterial` `vaginosis`](Media:_mBio.00204-15 "wikilink")
![`pdf.gif`](pdf.gif "fig:pdf.gif")` `[`Altering` `the` `Intestinal` `Microbiota` `during` `a` `Critical` `Developmental` `Window` `Has` `Lasting` `Metabolic` `Consequences`](Media:_Cox_Cell_2014-1.pdf "wikilink")

<hr>
### Module 2: Marker Gene-based Analysis

<font color="green">*Faculty: William Hsiao*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Module2\_Lecture.pdf](Media:Metagenomics_2015_Module2_Lecture.pdf "wikilink")
**Lab Practical:**
[Marker Gene-based Lab practical](Marker_Gene-based_Lab "wikilink")

**Data set:**
\* <http://www.mothur.org/w/images/d/d6/MiSeqSOPData.zip>

**Programs used:**
\* [Mothur](http://www.mothur.org)

`*  `[`QIIME`](http://www.qiime.org)
`*  `[`FIGTREE`](http://tree.bio.ed.ac.uk/software/figtree/)

<hr>
### Integrated Assignment - Day 1

<font color="green">*Faculty: Dhwani Desai and Michael Hall*</font>

**Lab Practical:**
[Metagenomics Integrated Assignment](Metagenomics_Integrated_Assignment "wikilink")
[Metagenomics IntegratedAssignment AnswerKey](Metagenomics_IntegratedAssignment_AnswerKey "wikilink")

<hr>
Day 2
-----

### Module 3: Metagenomic Taxonomic Composition

<font color="green">*Faculty: Morgan Langille*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Module3\_Lecture.pdf](Media:Metagenomics_2015_Module3_Lecture.pdf "wikilink")
**Lab Practical:**
[Metagenomics Taxonomic Composition Lab Practical](Metagenomics_Taxonomic_Composition_Lab "wikilink")
[Metagenomics Taxonomic Composition Lab Practical Answers](Metagenomics_Taxonomic_Composition_Lab_Answers "wikilink")
**Data set:**
\* Custom dataset generated from samples from the [HMP DACC](http://hmpdacc.org)

**Programs used:**
\* [MetaPhlan2](http://bitbucket.org/biobakery/metaphlan2)

`* `[`STAMP`](http://kiwi.cs.dal.ca/Software/STAMP)
`* `[`Microbiome` `Helper`](http://github.com/mlangill/microbiome_helper)

<hr>
### Module 4: Metagenomic Functional Composition

<font color="green">*Faculty: Morgan Langille*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Module4\_Lecture.pdf](Media:Metagenomics_2015_Module4_Lecture.pdf "wikilink")
**Lab Practical:**
[Metagenomics Functional Composition Lab practical](Metagenomics_Functional_Composition_Lab "wikilink")

[Metagenomics Functional Composition Lab Answers](Metagenomics_Functional_Composition_Lab_Answers "wikilink")

**Data set:**
\* Custom dataset generated from samples from the [HMP DACC](http://hmpdacc.org) **Programs used:**
\* [Humann](http://huttenhower.sph.harvard.edu/humann)

`* `[`STAMP`](http://kiwi.cs.dal.ca/Software/STAMP)
`* `[`Microbiome` `Helper`](http://github.com/mlangill/microbiome_helper)

<hr>
### Bonus Module: PICRUSt

<font color="green">*Faculty: Morgan Langille*</font> **Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Bonus\_PICRUSt\_Lecture.pdf](Media:Metagenomics_2015_Bonus_PICRUSt_Lecture.pdf "wikilink")
**Lab Practical:**
[PICRUSt Lab](PICRUSt_Lab "wikilink")

<hr>
### Integrated Assignment - Day 2

<font color="green">*Faculty: Dhwani Desai and Michael Hall*</font>

**Lab Practical:**
[Metagenomics Integrated Assignment](Metagenomics_Integrated_Assignment "wikilink")
![](pdf.gif "fig:pdf.gif") [Integrated assignment Day 2 Answer Key](Media:Cbw-workshop-assignment-key.pdf "wikilink")

<hr>
Day 3
-----

### Module 5: Metatranscriptomics

<font color="green">*Faculty: John Parkinson*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Module5\_Lecture.pdf](Media:Metagenomics_2015_Module5_Lecture.pdf "wikilink")
**Lab Practical:**
[Metatranscriptomics Lab practical](Metatranscriptomics_Lab "wikilink")
**Programs used:**
\*

<hr>
### Module 6: Biomarker Selection

<font color="green">*Faculty: John Parkinson*</font>

**Lecture:**
![](pdf.gif "fig:pdf.gif") [Metagenomics\_2015\_Module6\_Lecture.pdf](Media:Metagenomics_2015_Module6_Lecture.pdf "wikilink")

<hr>
Tips, tricks, and resources
---------------------------

### Data Sets from Entire Workshops

`* `[`Module2` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/markergenes.tar.gz)
`* `[`Integrated` `Assignment` `-` `Day` `1` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/integrated_assignment_day1.tar.gz)
`* `[`Module3` `&` `Module` `4` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/hmp_metagenomics.tar.gz)
`* `[`Integrated` `Assignment` `-` `Day` `2` `Data`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/integrated_assignment_day2.tar.gz)
`* `[`Module` `5` `Data` `without` `blast` `database`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/metatranscriptomics.tar.gz)

### Results from Instructor's Instance on Amazon

`* `[`Module2` `mothur` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/lab2_mothur.tar.gz)
`* `[`Module2` `qiime` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/lab2_qiime.tar.gz)
`* `[`Integrated` `Assignment` `-` `Day` `1` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/assignment1.tar.gz)
`* `[`Module3` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/module3_result.tar.gz)
`* `[`Module4` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/module4_result.tar.gz)
`* `[`Bonus` `Module:` `PICRUSt` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/module_picrust_result.tar.gz)
`* `[`Integrated` `Assignment` `-` `Day` `2` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/assignment2.tar.gz)
`* `[`Module5` `result`](http://www.hpc4health.ca/sites/default/files/cbw/2015/metagenomics/module5_result.tar.gz)

### Tools with installation instructions on our Amazon server

[Tools Used in Our Workshops\#Tools\_for\_Metagenomics\_Workshop](Tools_Used_in_Our_Workshops#Tools_for_Metagenomics_Workshop "wikilink")

### Launching CBW AMI

[Steps to launch CBW public AMI](Launching_CBW_AMI "wikilink")

-   **AMI ID**: ami-b7de25dc
-   **AMI Name**: CBW Metagenomics Workshop 2015
