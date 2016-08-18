---
layout: post2
permalink: /bioinformatics_for_cancer_genomics_mod6_software_2015/
title: BiCG Somatic Mutations Software
header1: Bioinformatics for Cancer Genomics Somatic Mutations Lab 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Lab Module 6 - Software Installation Instructions
=================================================

This page describes where to get and how to install the software used for this lab module.

Installing Strelka
------------------

We can retrieve Strelka from its [website](https://sites.google.com/site/strelkasomaticvariantcaller/).

``` bash
ftp://strelka@ftp.illumina.com/v1-branch/v1.0.14/strelka_workflow-1.0.14.tar.gz
tar -xzvf strelka_workflow-1.0.14.tar.gz
```

Now we run `configure` and `make` on it:

``` bash
cd strelka_workflow-1.0.14
./configure --prefix=/path/to/strelka
make
```

Installing MutationSeq
----------------------

We can retrieve MutationSeq from its [website](http://compbio.bccrc.ca/software/mutationseq/).

``` bash
wget ftp://ftp.bcgsc.ca/public/shahlab/MutationSeq/museq.zip
unzip museq.zip
```

We will need a working installation of python that has the appropriate analytical packages. The easiest way to get this is to install [Anaconda](https://store.continuum.io/cshop/anaconda/). This distribution of Python contains all the analytical packages needed by MutationSeq.

Once you have this installed, you'll need to edit the makefile in the museq folder, the line you need to change is:

``` bash
/share/lustre/jtaghiyar/Apps/python/bin/python2.7 setup.py --boost_source=$(BOOSTPATH) install --prefix=./ --install-platlib=./
```

You'll need to replace `/share/lustre/jtaghiyar/Apps/python/bin/python2.7` with the python you want to use. The `$(BOOSTPATH)` needs to point to the path where you installed [Boost](http://www.boost.org/).

Once you've edited this line, you can enter `make` in the museq folder and it should be the pybam.so which is what you need for MutationSeq to work.
