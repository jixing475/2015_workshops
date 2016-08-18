---
layout: post2
permalink: /bioinformatics_for_cancer_genomics_mod6_prepro_2015/
title: BiCG Somatic Mutations Preprocessing
header1: Bioinformatics for Cancer Genomics Somatic Mutations Lab 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Often it is important to pre-process the bams to remove some poor quality reads to help increase the sensitivity of variant calling. Samtools provides functionality for this. For instance, you can remove PCR duplicates:

``` bash
samtools rmdup in.bam out.bam
```

Or filter out reads that are not primary alignments (i.e align to multiple locations):

``` bash
samtools filter -F 256 in.bam > out.bam
```

Or filter out reads that are not mapped:

``` bash
samtools filter -F 4 in.bam > out.bam
```

The 4 and 256 flag is a bitwise flag that can be explained from this [website](https://broadinstitute.github.io/picard/explain-flags.html).
