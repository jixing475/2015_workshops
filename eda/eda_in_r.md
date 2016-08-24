---
layout: post2
permalink: /EDA_in_r_2015/
title: Exploratory Analysis of Biological Data Using R 2015 Student Page
header1: Exploratory Analysis of Biological Data Using R 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---


Laptop Setup Instructions
-------------------------

Instructions for setting up your laptop can be found here: [Laptop Setup Instructions](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/intror/laptop_instructions.txt)

<hr>

Difference Between R and R Studio

RStudio doesn't know where libraries are installed, when they are not installed through the RStudio package manager. To tell RStudio the location, you can define the path in a startup file. Create a file called `.Renviron` . Inside there:

```
R_LIBS=<R Library Path of other installed packages>
```

That was the problem when students installed things in R Studio at the command line using the **R** command `install.package()`.

... or you could use the package manger to install libraries.

Syntax highlighting  

... of scripts in the **R** editor does not seem to work under Windows. If you want highlighted syntax, use RStudio instead. Or (seriously), get a Mac.

Pre-Workshop Tutorials
----------------------

1) <b>R Preparation tutorials:</b> You need to be familiar with the material covered in the Introduction to **R** tutorial, below. The tutorial should be very accessible even if you have never used R before.

-   The [Introduction to **R** tutorial](http://steipe.biochemistry.utoronto.ca/abc/index.php/R_tutorial)
-   The [R command cheat sheet](../../resources/R_Short-refcard.pdf)

<hr>
Day 1
-----

<hr>
#### Welcome

<font color="green">*Faculty: Michelle Brazas*</font>

<hr>
#### Data Sets for Workshop Modules 1 – 5

[Table_S3.csv](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Table_S3.csv)  
[GvHD.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/GvHD.txt)  
[hiv.raw.data.24h.txt](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/eda/Hiv.raw.data.24h.txt)  
[logcho_237_4class.txt](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Logcho_237_4class.txt)  
[GSE26922.dat](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/GSE26922.dat)  
[TsneRef.dat](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/TsneRef.dat)  

<hr>
#### Module 1: Exploratory Data Analysis

<font color="green">*Faculty: Boris Steipe*</font>

**Lecture:**

[Stats2015\_Module1.pdf](‎https://bioinformatics.ca/stats2015module1pdf)  
[Stats2015\_Module1.ppt](‎https://bioinformatics.ca/stats2015module1ppt)  
[Stats2015\_Module1.mp4](‎https://bioinformatics.ca/stats2015module1mp4)  

**Scripts:**

* [**2015\_EDA\_Module\_1\_EDA.R**](https://raw.githubusercontent.com/bioinformatics-ca/2015_workshops/master/eda/2015_EDA_Module_1_EDA.R)

-   [**PlottingReference.R**](https://github.com/bioinformatics-ca/bioinformatics-ca.github.io/blob/master/resources/Plotting.Reference.ipynb)

[Code Additions to Script](https://github.com/bioinformatics-ca/2015_workshops/blob/master/eda/Code_Additions_to_Script.md)

**Resources:**

* [**Jaitin *et al.* (2014) Single-Cell RNA-seq defines cell types‎**](http://www.ncbi.nlm.nih.gov/pubmed/24531970)

-   [Beyond Bar and Line-Graphs](http://www.ncbi.nlm.nih.gov/pubmed/25901488)


*Help*ful links  

* [The **R** help mailing list](https://stat.ethz.ch/mailman/listinfo/r-help)
* [**Rseek**: the specialized search engine for **R** topics](http://rseek.org/)
* [**R** questions on stackoverflow](http://stackoverflow.com/questions/tagged/r)
* [The Comprehensive **R** Archive Network **CRAN**](http://cran.r-project.org/)
* [The **CRAN** task-view collection](http://cran.r-project.org/web/views/)
* [**Bioconductor** task views](http://www.bioconductor.org/packages/release/BiocViews.html)

<hr width="20%">
-   [**Using Projects with R Studio**](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)
-   [**Software Carpentry**](http://software-carpentry.org/)
    -   [Best Practices for Scientific Computing, Wilson *et al.*, PLoS Biology, Jan. 2014](http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.1001745)
-   [**Version control in R Studio**](https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN)

<hr>
#### Module 2: Regression Analysis

<font color="green">*Faculty: Boris Steipe*</font>

**Lecture:**

[Stats2015\_Module2.pdf](https://bioinformatics.ca/stats2015module2pdf)  
[Stats2015\_Module2.ppt](https://bioinformatics.ca/stats2015module2ppt)  
[Stats2015\_Module2.mp4](https://bioinformatics.ca/stats2015module2mp4)  

**Scripts:**

* [**2015\_EDA\_Module\_2\_Regression.R**](‎https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/2015_EDA_Module_2_Regression.R)

**Links:**

* [Maximal Information Coefficient](http://www.ncbi.nlm.nih.gov/pubmed/22174245)
* [Homepage for data exploration with the MIC measure](http://www.exploredata.net/) 
* [**CRAN**: package MINERVA](http://cran.r-project.org/web/packages/minerva/)  (**R** wrapper for a fast *mine* implementation)

<hr>
#### Module 3: Dimension Reduction

<font color="green">*Faculty: Boris Steipe*</font>

**Lecture:**

[Stats2015\_Module3.pdf](https://bioinformatics.ca/stats2015module3pdf)  
[Stats2015\_Module3.ppt](https://bioinformatics.ca/stats2015module3ppt)  
[Stats2015\_Module3.mp4](https://bioinformatics.ca/stats2015module3mp4)  

**Scripts:**

[2015\_EDA\_Module\_3\_DimensionReduction.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/2015_EDA_Module_3_DimensionReduction.R)

<hr>

#### Integrated Assignment

<font color="green">*Faculty: Catalina Anghel and David Shih*</font>

**Part 1:**

Assignment Part 1:  

[Stats2015\_IntegratedAssignment\_Part1.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Part1.pdf)

Questions in R - Part 1:  

[Stats2015\_IntegratedAssignment\_Part1\_Questions.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Part1_Questions.R)

Answer Key - Part 1:  

[Stats2015\_IntegratedAssignment\_Part1\_AnswerKey.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Part1_AnswerKey.R)

**Data Set:**

R package: [CCLE\_0.1.1.tar.gz](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/CCLE_0.1.1.tar.gz) (RStudio users on any platform), [CCLE\_0.1.1.zip](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/CCLE_0.1.1.zip) (non-RStudio users on Windows)
(Note: Please right-click and select "Save link as..." or "Save target as...")

**For your reference:**

Preprocessing scripts:  [CCLE\_preprocess.zip](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/CCLE_preprocess.zip)  
[Stats2015\_IntegratedAssignment\_Heatmap.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Heatmap.R)

<hr>
Day 2
-----

<hr>
#### Module 4: Clustering Analysis

<font color="green">*Faculty: Boris Steipe*</font>

**Lecture:**

 [Stats2015\_Module4.pdf](https://bioinformatics.ca/stats2015module4pdf)  
 [Stats2015\_Module4.ppt](https://bioinformatics.ca/stats2015module4ppt)  
 [Stats2015\_Module4.mp4](https://bioinformatics.ca/stats2015module4mp4)  

**Scripts:**

* [**2015\_EDA\_Module\_4\_ClusteringExpressionData.R**](‎https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/2015_EDA_Module_4_ClusteringExpressionData.R)

**Links:**

* [Comparison of Clustering Methods](http://www.ncbi.nlm.nih.gov/pubmed/19240124)  
* [**R**-"task view": Cluster Analysis](http://cran.r-project.org/web/views/Cluster.html)  (and Finite Mixture Models)  

**Dataset:**

If you load using this file: 

* [Gset.RData](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Gset.rdata) do

``` r
load("gset.RData")
```

on the command line. (Check that 'gset' is actually lower case in the folder. You might need a capital letter at the start.) 

* [Plaft.RData](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Platf.rdata) do

``` r
load("platf.RData")`
```

R object file: [GSE26922.rds](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/GSE26922.rds)  
Read with:

``` r
   gset <- readRDS("GSE26922.rds")
   # do not run the following line:
   gset <- gset [ [ idx ] ]
```

<hr>
#### Module 5: Hypothesis Testing for EDA

<font color="green">*Faculty: Boris Steipe*</font>

**Lecture:**

 [Stats2015\_Module5.pdf](https://bioinformatics.ca/stats2015module5pdf)  
 [Stats2015\_Module5.ppt](https://bioinformatics.ca/stats2015module5ppt)  
 [Stats2015\_Module5.mp4](https://bioinformatics.ca/stats2015module5mp4)  

**Script**

[2015\_EDA\_Module\_5\_HypothesisTesting\_Corrected.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/2015_EDA_Module_5_HypothesisTesting_Corrected.R)

**Links:**

  * [NGS Differential Transcriptional Analysis](http://www.ncbi.nlm.nih.gov/pubmed/25894390)  
  * [Erroneous Analysis of Significance](http://www.ncbi.nlm.nih.gov/pubmed/21878926)  

<hr>

#### Integrated Assignment - Part 2

<font color="green">*Faculty: Catalina Anghel and David Shih*</font>

Assignment Part 2:  

[Stats2015\_IntegratedAssignment\_Part2.pdf](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Part2.pdf)

Questions in R - Part 2:  

[Stats2015\_IntegratedAssignment\_Part2\_Questions.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Part2_Questions.R)

Answer Key - Part 2:  

[Stats2015\_IntegratedAssignment\_Part2\_AnswerKey.R](https://github.com/bioinformatics-ca/2015_workshops/raw/master/eda/Stats2015_IntegratedAssignment_Part2_AnswerKey.R)

<hr>
<hr>

Other Readings
--------------

**Other (more advanced) resources:**

*Manuals:*

More detailed introduction to R. Not a basic tutorial, this is for people who really want to know more about R.

<http://cran.r-project.org/doc/manuals/R-intro.html>

*Books:*

1) "Introductory Statistics with R" by Peter Dalgaard. It is not required for this workshop but if you are interested in buying a good book and/or want to know more, you might want to consider getting a copy. The UofT library has an online version.

2) Statistics for Biology and Health by Robert Gentleman, Vincent Carey, Wolfgang Huber, Rafael Irizarry and Sandrine Dudoit

3) Building Bioinformatics Solutions with Perl, R and MySQL by Conrad Bessant, Ian Shadforth and Darren Oakley

**Post-workshop Readings**

-   Another good paper from Gentleman: [Statistical\_applications\_in\_genetics\_and\_molecular\_biology\_2005\_Gentleman‎](http://www.uvm.edu/~pdodds/files/papers/others/everything/gentleman2005a.pdf)

<!-- -->

-   A tutorial article in PLoS Computational Biology: [A Quick Guide to Teaching R Programming to Computational Biology Students](http://www.ploscompbiol.org/article/info%3Adoi%2F10.1371%2Fjournal.pcbi.1000482)
