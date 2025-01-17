---
layout: post2
permalink: /analysis_of_metagenomic_data_PICRUSt_lab_2015/
title: MetaG PICRUSt Lab
header1: Analysis of Metagenomic Data PICRUSt Lab 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

# PICRUSt Lab

## Introduction

This lab will walk you through the basic steps of using PICRUSt to make functional predictions (e.g. predicted metagenome) from your 16S data.

It uses an OTU table that has already been generated for use with PICRUSt. See detailed instructions on how to do this using closed reference picking [here](http://picrust.github.io/picrust/tutorials/otu_picking.html) or using open-reference picking [here](http://github.com/mlangill/microbiome_helper#picrust-workflow-for-16s-data).

The data we will be using in this lab comes from the stool of three groups of mice that are of different ages (e.g. young, middle, and old).

## Preliminaries 

### Amazon node

Read [these directions](http://bioinformatics.ca/workshop_wiki/index.php/Analysis_of_Metagenomic_Data_2015_Workshop_Wiki#Logging_into_the_Amazon_cloud) for information on how to log in to your assigned Amazon node.

### Work directory

Create a new directory that will store all of the files created in this lab.

```
    rm -rf ~/workspace/module_picrust
    mkdir -p ~/workspace/module_picrust
    cd ~/workspace/module_picrust
```

Now we need to download the data using 'wget':

``` 
  wget https://www.dropbox.com/sh/a35f90j8eh3r23j/AADzQ9zLrEud5xHAHG8kKxlua?dl#1 -O picrust_data.zip
```

Now decompress the data using "unzip" command:

```
 unzip picrust_data.zip
 rm picrust_data.zip
```

## Main Lab Steps

Correct the OTU table based on the predicted 16S copy number for each organism in the OTU table:

```
 normalize_by_copy_number.py -i otus.biom -o otus_corrected.biom 
```

You can use STAMP with the corrected OTU table by first converting it using the Microbiome Helper script:

```
 biom_to_stamp.py -m taxonomy otus_corrected.biom > otus_corrected.spf
```

Make KEGG Ortholog (KOs) predictions using the corrected OTU table as input:

```
 predict_metagenomes.py -i otus_corrected.biom -o ko_predictions.biom
```

Default predictions from PICRUSt are KOs (KEGG Orthologs) but PICRUSt can also predict COGs and Rfams.

PICRUSt can also collapse KOs to KEGG Pathways.We will do that with the PICRUSt script "categorize_by_function.py"

```
 categorize_by_function.py -i ko_predictions.biom -c KEGG_Pathways -l 3 -o pathway_predictions.biom
```

PICRUSt can directly connect the OTUs that are contributing to each KO by using the *metagenome_contributions.py* script:

```
 metagenome_contributions.py -i otus_corrected.biom -l K01727,K01194,K01216,K11049,K00389,K00449 -o metagenome_contributions.tab
```

We can view these KEGG Pathways within STAMP. First we need to change the BIOM version we are using:

``` 
 export PYTHONPATH#~/local/lib/python2.7/site-packages
```

Then we use a script from Microbiome Helper to convert the BIOM file into a STAMP profile file:

```
 biom_to_stamp.py -m KEGG_Pathways pathway_predictions.biom > pathway_predictions.spf
```

Now download the pathway_predictions.spf file and the map.tsv file to your local computer and load these files within STAMP (File->Load).

Change Profile Level to "Level 3" which actually represents the KEGG Pathways. Then change the "Group Field" (top right) to "Age_Group".

Apply a multiple test correction and then view the individual KEGG Pathways using a "Box Plot" (instead of PCA plot). What is the most significant KEGG Pathway?

If you like you can explore other visualizations with STAMP or attempt to load KEGG Modules or KOs instead within STAMP.

Now lets look at getting more detail for the individual KOs that we focused on with the metagenome_contributions.py command from a few steps ago. You can browse the file using 'less':

```
 less metagenome_contributions.tab
```

The output should look like this:

```
 Gene    Sample  OTU     GeneCountPerGenome      OTUAbundanceInSample    CountContributedByOTU   ContributionPercentOfSample     ContributionPercentOfAllSamples
 K01727  9Y-June1        190026  1.0     1.66666666667   1.66666666667   0.251889168766  0.000792700810933
 K01727  9Y-June1        4331760 3.0     1.0     3.0     0.453400503778  0.00142686145968
 K01727  9Y-June1        2594570 1.0     0.333333333333  0.333333333333  0.0503778337531 0.000158540162187
 K01727  9Y-June1        1106050 1.0     0.333333333333  0.333333333333  0.0503778337531 0.000158540162187
 K01727  9Y-June1        3090117 1.0     0.2     0.2     0.0302267002519 9.5124097312e-05
 K01727  9Y-June1        1051299 1.0     0.75    0.75    0.113350125945  0.00035671536492
 K01727  9Y-June1        2617854 1.0     0.333333333333  0.333333333333  0.0503778337531 0.000158540162187
```

Each line in this file relates how much a single OTU (third column) contributes to a single KO (first column) within a single sample (second column). The fifth column contains the actual relative abundance contributed by this OTU, and the other columns contain other information about the abundance of the OTU the percentage contribution of this OTU. 

You could use your favourite plotting program (e.g. excel, sigmaplot, etc) to plot the information from columns 1-3 and column 5. As an example of what the output might look, I have created the following image:

![](https://github.com/bioinformatics-ca/2015_workshops/blob/master/metagenomics/600px-K00449_genus.png?raw=true)

This plot shows that the large increase in K00449 within sample 25 is contributed by the genus *Citrobacter*.
