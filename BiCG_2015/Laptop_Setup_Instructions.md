#Laptop Setup Instructions

<b>Programs to Install</b>

1) Install the most recent version of R for your operating system by following the links from http://www.r-project.org/   
For help installing R, see last bullet.

1.1) Download and install the most recent version of R Studio desktop from http://www.rstudio.com/  

1.2) Install R Markdown within R Studio

---
 File -> New File -> R Markdown. If prompted to install packages, click yes.  
 Select Document on the left menu within the window which pops up.  
 Enter title "R Markdown". Leave as default HTML. Click Ok.  
 Within one of the screens in your R Studio, there is a knitting needle icon. Press the “Knit HTML” button (found near top) to make sure it works.  
 After a few moments a window entitled R Markdown will appear. This means it is working. Close this window.  

---

1.3) Install Shiny within R Studio

---
 File -> New File -> R Markdown.  
 Select Shiny on the left menu.  
 Enter title “Shiny”. Leave as default Shiny Document. Click Ok.  
 If prompted to install packages, click yes.  
 Within one of the screens in your R Studio, there is now a Run Document icon. Press the “Run Document” (found near top) to make sure it works.  
 After a few moments a window entitled Shiny will appear. This means it is working. Close this window.  

---

2) Install the BioConductor core packages. To do this, open R and type at the > prompt, then wait for the prompt to reappear and type second command:

```
 source("http://bioconductor.org/biocLite.R");  
 biocLite(); 
```

3) Install some workshop specific packages. Again, type at the > prompt, then wait for the prompt to reappear before typing the next command.

```
 biocLite("aCGH");  
 source("http://aroma-project.org/hbLite.R");  
 hbInstall("aroma.affymetrix"); 
```

You will need to restart R after this package. Save your workspace and restart R.<br>
To check if the packages have been installed properly, you can check under the 'Packages&Data' tab in the header (I am on a MAC so wording and location may be different on a PC). Within the 'Package Manager' section, all of the above packages should be listed. During class to use these packages, you will have to load them.

Alternatively to check which packages have been installed you can use the following command:

```
 installed.packages(); 
```

4) Install even more packages in R. Again at the > prompt type the following commands. Wait for the prompt to return between commands, as some commands may take a while to execute:

```
 install.packages("ggplot2");  
 install.packages("gplots");  
 install.packages("dplyr");  
 install.packages("plyr");  
 install.packages("data.table");  
 install.packages("reshape2");  
 install.packages("stringr");  

 source("http://bioconductor.org/biocLite.R");  
 biocLite("ggbio");  
 biocLite("GenomicRanges");  
 biocLite("GenomicAlignments");  
 biocLite("biovizBase");  
 biocLite("Gviz");  
 biocLite("Homo.sapiens");  
 biocLite("VariantAnnotation");  
 biocLite("grid");  
 biocLite("biomaRt"); 
```

7) Install the BioConductor core packages. To do this, open R and type at the > prompt, then wait for the prompt to reappear and type second command: 

```
 source("http://bioconductor.org/biocLite.R");    
 biocLite();   
 biocLite("affy");  
 require(affy);  
```

NOTE: The execution of this last command should not be an error, and should start with the following line of text:

```
Loading required package: affy 
```

8) For analysis of the microarray platform, you will need to download and install the alternative CDF file associated with the array. 

Download for HGU95Av2_Hs_ENTREZG alternative-CDF package from:   http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/17.1.0/entrezg.asp  

Locate the row containing HGU95Av2_Hs_ENTREZG and download the 'C' file that corresponds with your machine (PC=Win32, Source=Mac or Linux). This will be a zipped file. 

There are 2 options for loading this into your R session: 

A)	Unzip the file (see below if you do not already have an unzip program). Then place this unzipped folder in your R working directory (use the top menu in R Studio to do this, or the setwd command) and execute the following command in R: 

```
 install.packages("hgu95av2hsentrezgcdf_17.1.0", repos = NULL, type="source");   
```

NOTE: You may need to modify this file name according to the name of the folder just created by unzipping the download. My folder name for example, did not have _17.1.0. For a MAC you will need the type="source" parameter, but you may not require this parameter on a PC. 

B) Let R upload the file by executing the following command in R which will open a dialogue box allowing you to select the zip file to upload. Again, for a MAC you will need the type="source" parameter, but you may not require this parameter on a PC. 

```
 install.packages(file.choose(), repos=NULL, type="source") 
```

8.1) To test whether you have installed this package correctly, execute the following R command: 
 
``` 
 require(hgu95av2hsentrezgcdf); 
```

NOTE: If you have installed hgu95av2hsentrezgcdf package properly, the output from this command should not be an error and should start with the following lines of text:

```
Loading required package: hgu95av2hsentrezgcdf  
Loading required package: AnnotationDbi  
Loading required package: BiocGenerics  
Loading required package: parallel  
```

9) A robust text editor. For Windows/PC - notepad++ (http://notepad-plus-plus.org/). For Linux - gEdit (http://projects.gnome.org/gedit/). For Mac – TextWrangler (http://www.barebones.com/products/textwrangler/download.html)

10) A file decompression tool. For Windows/PC – 7zip (http://www.7-zip.org/). For Linux – gzip (http://www.gzip.org). For Mac – already there.

11) A robust internet browser such as Firefox or Safari (Internet Explorer and Chrome are not recommended because of Java issues).

12) Java -The visualization program that we will be using (IGV) requires Java. Check if you have Java installed:   https://www.java.com/verify/ and download Java if you do not have it installed.

13) Integrative Genomics Viewer 2.3 (IGV) - Once java is installed, go to http://www.broadinstitute.org/igv/ and register in order to get access to the downloads page. Once you have gained access to the downloads page, click on the appropriate launch button that matches the amount of memory available on your laptop (if you have space, 1.2GB is good, more is better). Chrome: Chrome does not launch "java webstart" files by default. Instead, the launch buttons below will download a "jnlp" file. This should appear in the lower left corner of the browser. Double-click the downloaded file to run. Windows users: To run with more than 1.2 GB you must install 64-bit Java. This is often not installed by default even with the latest Windows 7 machines with many GB of memory. In general trying to launch with more memory than your OS/Java combination supports will result in the obscure error "could not create virtual machine".

14) SSH client - Mac and Linux users already have a command line ssh program that can be run from the terminal. For Windows users, please download PuTTY:http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html

15) SCP/SFTP client - We will be moving data from the servers to the student laptops for visualization. Mac and Linux users already have a command line scp and sftp program. For Windows users, please install WinSCP: http://winscp.net/eng/download.php

16) Install Cytoscape 3.2.1: http://www.cytoscape.org

17) Within the Cytoscape program, install the following Cytoscape plugins. <br>
From the menu bar, Apps >  Manage Apps <br>

Within all apps, Search for the following and install:  

 jActiveModules (should already be installed. Install if not)    
 GeneMania (should already be installed. Install if not).   
 EnrichmentMap  
 BiNGO  
 Reactome FI Plugin   

Select GeneMania from Apps Manager → Choose Another Data Set. <br>
From the list of available data sets, select the most recent (2014-08-12/1 June 2014) and under Include only these networks: select All → Download.  

An Install Window will pop-up. Select H.Sapiens Human (2384 MB) → Install  
This requires time and a good network connection to download completely, so be patient.  

18) A PDF viewer (Adobe Acrobat or equivalent).

19) fastqc which is available for Windows/Mac/Linux here: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/ 

20) Sign up for a GenePattern account at Broad  
http://www.broadinstitute.org/cancer/software/genepattern/   
When you go to this homepage, there is under the "Getting Started" section an icon for "Run analyses on the Broad public server".  
Click here and sign up for an account so that in class we can use the tool on the web.  

21) For help installing R, you may find the following directions helpful resources:  
Tutorial on how to install R on windows only look at the "getting started" section: http://www.biostat.wisc.edu/~kbroman/Rintro/Rwin.html  
and MACS only look at the "getting started" section: http://www.biostat.wisc.edu/~kbroman/Rintro/Rmac.html
