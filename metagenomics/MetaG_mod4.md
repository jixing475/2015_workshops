---
layout: post2
permalink: /analysis_of_metagenomic_data_mod4_lab_2015/
title: MetaG Functional Composition Lab
header1: Analysis of Metagenomic Data Functional Composition Lab 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Introduction
------------

This lab is set-up to walk you through the process of determining the functional composition of several metagenomic samples.

Throughout the tutorial, there are several questions which you can answer in a separate Word Doc. These questions are meant to make you think while doing the tutorial.

This lab component will use the same samples as was used in [Metagenomics\_Taxonomic\_Composition\_Lab](Metagenomics_Taxonomic_Composition_Lab "wikilink").

Preliminaries
-------------

### Amazon node

Read [these directions](http://bioinformatics.ca/workshop_wiki/index.php/Analysis_of_Metagenomic_Data_2015_Workshop_Wiki#Logging_into_the_Amazon_cloud) for information on how to log in to your assigned Amazon node.

### Work directory

Create a new directory that will store all of the files created in this lab.

```
   rm -rf ~/workspace/module4
   mkdir -p ~/workspace/module4
   cd ~/workspace/module4
   ln -s ~/CourseData/hmp_metagenomics ./
   ln -s ~/CourseData/refs/kegg/ ./
```

**Notes**:

-   The `ln -s` command adds a symbolic link to the (read-only) `~/CourseData/hmp\_metagenomics` directory as well as the kegg database that we will be using with Humann.

Main Lab Steps
--------------

We are now going to functionally annotate our metagenome using Humann. Note, that we will be using the same HMP samples that we taxonomically annotated using Metaphlan2.

### Running DIAMOND search against KEGG

The first step of humann requires a similarity search against the kegg database. This database is located at “~/CourseData/refs/kegg/”. This is a reduced KEGG database that the authors of Humann created and which they make available through personal correspondence. This similarity search can be done using various tools such as BLAST, USEARCH, RapSearch, etc. In this tutorial we will use a relatively new similarity search tool that is much faster and works well for large metagenomic datasets called DIAMOND (http://ab.inf.uni-tuebingen.de/software/diamond/).

First we will make a directory to store our sequence search outputs:

```
mkdir pre_humann
```

Now we will run DIAMON on our metagenomic sequences for the sample SRS015044.

```
diamond blastx -p 4 -d kegg/kegg.reduced -q hmp_metagenomics/fastq/SRS015044.fastq -a pre_humann/SRS015044
```

The options used in this command are:

-   'blastx': Tells DIAMOND to run in “blastx” mode meaning that we will search a nucleotide query against a protein database in all 6 frame translations (3 forward and 3 reverse).
-   '-p 4': Indicates that DAMOND should use 4 threads to do the search.
-   '-d kegg/kegg.reduced' points at the KEGG database which has already been formatted for use with DIAMOND
-   '-q hmp\_metagenomics/fastq/SRS015044.fastq' is the input metagenomic sample
-   '-a pre\_humann/SRS015044' is the name of the output file (Note: DIAMOND appends a '.daa' automatically to the end of the output file name)
-   Note: That the default e-value cutoff used by DIAMOND is 0.001.

The previous command is comparing 200k sequences vs. the KEGG database (~1.3 million sequences) and takes about 3 minutes. If we had used the NCBI BLASTX it would have taken a couple of days!

The output from diamond is a special binary format that we can then turn into either SAM or BLAST tabular output with the latter being the default.

```
diamond view -a pre_humann/SRS015044.daa -o pre_humann/SRS015044.txt
```

You can see the output using 'less':

```
less pre_humann/SRS015044.txt
```

Each column tells us different information about the match:

```
1  Query
2  Subject
3  % id
4  alignment length
5  Mistmatches
6  gap openings
7  q.start
8  q.end
9  s.start
10 s.end
11 e-value
12 bit score
```

Now run DIAMOND for samples SRS015893 aagainst the KEGG database and convert output to BLAST tabular format.

```
diamond blastx -p 4 -d kegg/kegg.reduced -q hmp_metagenomics/fastq/SRS015893.fastq -a pre_humann/SRS015893
diamond view -a pre_humann/SRS015893.daa -o pre_humann/SRS015893.txt
```

Repeat the above commands once again for sample SRS097871.

### Running Humann

Now, we are going to run HUMANN. To use human you are going to copy the entire program to your working directory. The human program is in “ ~/CourseData/refs/humann-0.99/”:

```
cp -r ~/CourseData/refs/humann-0.99/ ./
```

Then move into the humann directory:

```
cd humann-0.99
```

Now copy your blast output from your 3 samples into the “human-0.99/input” directory:

```
cp ../pre_humann/SRS015044.txt ../pre_humann/SRS015893.txt ../pre_humann/SRS097871.txt ./input/
```

To being running human on just these 3 samples you use the “scons” command (using 4 cores):

```
scons -j 4
```

A bunch of messages will pass on your screen and it should finish in ~2 minutes. All of the output is contained in the “humann-0.99/output” directory. To see a list of them type:

```
ls output
```

There are MANY output files from human. The ones we care about are called:

-   **01b-hit-keg-cat.txt** –> KEGG KOs
-   **04b-hit-keg-mpm-cop-nul-nve-nve.txt** -> KEGG Modules
-   **04b-hit-keg-mpt-cop-nul-nve-nve.txt** -> KEGG Pathways

These files contain relative abundances for each of these different functional classifications. You can look at the format of these using “less”. For example to look at the KEGG Pathways:

```
less output/04b-hit-keg-mpt-cop-nul-nve-nve.txt
```

The output should look like this:

```
ID      NAME    SRS015044-hit-keg-mpt-cop-nul-nve-nve   SRS015893-hit-keg-mpt-cop-nul-nve-nve   SRS097871-hit-keg-mpt-cop-nul-nve-nve
InverseSimpson  InverseSimpson  63.9654 59.6469 62.4902
Shannon Shannon 4.30945 4.25267 4.30185
Pielou  Pielou  0.858922        0.847606        0.857407
Richness        Richness        1       1       1
ko00564 ko00564: Glycerophospholipid metabolism 0.00827982      0.00612454      0.00641725
ko00680 ko00680: Methane metabolism     0.00564549      0.00529206      0.00536557
ko00562 ko00562: Inositol phosphate metabolism  0.00241117      0.00268946      0.0048378
ko00563 ko00563: Glycosylphosphatidylinositol(GPI)-anchor biosynthesis  5.69937e-05     0       0
ko00561 ko00561: Glycerolipid metabolism        0.00496728      0.00468482      0.00548291
```

-   The first line indicates that the first column is a short id for the KEGG Pathway, the second column is a longer description of the KEGG Pathway, and the remaining columns represent the sample identifiers.
-   The next 4 lines calculate different alpha-diversity metrics for each sample, but in general these are usually not that useful and can be ignored.
-   From lines 6 onwards each row indicates the different relative abundance for each KEGG Pathway. Note that these values are small because they have been normalized so that each sample will sum to 1.

Now, use less to look at the KO predictions and the KEGG Module predictions:

```
less output/01b-hit-keg-cat.txt
less output/04b-hit-keg-mpm-cop-nul-nve-nve.txt
```

Q1) Which of the three samples has the highest relative abundance of the KEGG Module: “M00319: Manganese/zinc/iron transport system”?

### Running all samples with Microbiome Helper

So what about all of our samples? To do the DIAMOND searches for all 30 you could use a wrapper script provided by the microbiome\_helper package called run\_pre\_humann.pl. All 30 samples **could be** processed with a single command like:

```
run_pre_humann.pl -p 8 -d kegg/kegg.reduced -o pre_humann hmp_metagenomics/fastq/*
```

However, this would take about 25 minutes to complete. The humann step would take an additional 10 minutes to complete.

To make things easier the output for all 30 samples has been pre-computed and is located in “hmp\_metagenomics/humann\_output”.

If you browse the output using 'less' you can see that they are in the same format but with 30 columns representing the 30 samples:

```
cd ~/workspace/module4
less hmp_metagenomics/humann_output/04b-hit-keg-mpt-cop-nul-nve-nve.txt
```

You will notice that the output looks fairly messy because the terminal will automatically line wrap and it becomes hard to see where one line ends and the next begins. I often find the "cut" command useful to browse data like this. "cut" allows you to just look at particular columns from the data. For example:

```
cut -f 1-5 hmp_metagenomics/humann_output/04b-hit-keg-mpt-cop-nul-nve-nve.txt | less
```

-   '-f 1-5' indicates that we want to look at the first 5 columns. We could just have easily used '-f 1,3,10' (to view columns 1, 3 and 10) or '-f 1-3,20-' (to view columns 1 to 3 and columns 20 onwards).
-   '| less' "pipes" the output from the "cut" command and lets us view the output one screen at a time using our 'less' tool.

Now, we are going to use STAMP to visualize the humann output just like we did with the taxonomic data.

First, we need to convert the humann output files file into STAMP format:

```
humann_to_stamp.pl hmp_metagenomics/humann_output/04b-hit-keg-mpt-cop-nul-nve-nve.txt > pathways.spf
humann_to_stamp.pl hmp_metagenomics/humann_output/04b-hit-keg-mpm-cop-nul-nve-nve.txt > modules.spf
humann_to_stamp.pl hmp_metagenomics/humann_output/01b-hit-keg-cat.txt > kos.spf
```

You should now have the 3 files 'pathways.spf', 'modules.spf', and 'kos.spf' in the current directory. You can check to make sure they are there with 'ls'

```
ls
```

Your output should look like this:

```
ubuntu@ip-10-157-158-196:~/workspace/module4$ ls
hmp_metagenomics  humann-0.99  kegg  kos.spf  modules.spf  pathways.spf  pre_humann
ubuntu@ip-10-157-158-196:~/workspace/module4$
```

### STAMP with Humann Output

Copy the 'pathways.spf', 'modules.spf', and 'kos.spf' along with the previously used "hmp\_map.txt" file locally onto your computer.

Load the kos.spf file along with the original hmp\_map.txt file into STAMP. (File->Load)

Click on the "Two Groups" tab and choose "Benjamini-Hochberg FDR" for Multiple Test Correction. Look at the "Number of active features" to determine if there are any significant different features.

Q2) Using a two group test with multiple test correction applied are there any significant differences between male and female samples?

Change to a Multiple Group Test using the same multiple test correction and change the Group field (top right) to "body\_site".

Q3) Are there any significant differences in KOs across the body sites? If so, how many?

Now load the "pathways.spf" file into STAMP using the same "hmp\_map.txt" file.

(Note: STAMP has a bug that will not load a new dataset on top of another, so you need to completely close and restart STAMP first before loading in a different dataset)

Q4) When comparing samples by body site, how many KEGG Pathways are significantly different when using a group test (ANOVA) with Benjamini-Hochberg FDR?

Choose "Box plot" instead of PCA plot, and then expand the list of KEGG Pathways so you can see the corrected p-value. Order the list by corrected p-value by clicking on that column header.

![](https://github.com/bioinformatics-ca/2015_workshops/blob/master/metagenomics/STAMP_ordered_p-value.png?raw=true)

Q5) What is the most significantly different KEGG Pathway? What is the corrected p-value for this KEGG Pathway?

Compare the tongue samples to all other samples using a Two Group test. First select “tongue\_dorsum” for Group 1 (on the left hand side) and then select “All other samples” as Group 2. Use the default Welch’s t-test with BH FDR.

Your PCA plot should look like this:

![](https://github.com/bioinformatics-ca/2015_workshops/blob/master/metagenomics/600px-STAMP_tongue_pca.png?raw=true)


Q6) How many KEGG Pathways are significantly different between the tongue and the plaque samples combined?

Create a "Bar plot" for "ko00020: Citrate cycle (TCA cycle)".

Q7) Is the relative abundance of “Citrate cycle (TCA cycle)” higher or lower in the tongue compared to the plaque samples?

Q8) Create an “Extended error bar” plot and save the image as a .png using the File->Save Plot option.
