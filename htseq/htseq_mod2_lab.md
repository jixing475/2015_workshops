---
layout: post2
permalink: /high-throughput_sequencing_mod2_lab_2015/
title: HTSeq Reference Alignment Lab
header1: Informatics on High-Throughput Sequencing Data Reference Alignment Lab 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Reference Alignment Lab
=======================

Introduction
------------

Because of time constraints, we're going to align the reads from a 300 kbp stretch of chromosome 1 (`chr1:17704860-18004860`). Besides alignment, we'll remove potential PCR duplicates and perform INDEL realignment before using igv for visualization.

|Chromosome|Start|End|
|---|---|---|
|chr1|17704860|18004860|

The reads used in this lab come from a sample that was heavily studied during the 1000 Genomes Project (as well as subsequent studies). This sample has the following Coriell ID: NA12878. NA12878 is the child of the trio while NA12891 and NA12892 are her parents.

|Mother|Father|Child|
|---|---|---|
|NA12892|NA12891|NA12878|

If you finish early, feel free to perform the same steps on the other two individuals: NA12891 & NA12892.

Preliminaries
-------------

### Amazon node

Read [these directions](http://bioinformatics-ca.github.io/logging_into_the_Amazon_cloud/) for information on how to log in to your assigned Amazon node.

### Work directory

Create a new directory that will store all of the files created in this lab.

```
   rm -rf ~/workspace/module2
   mkdir -p ~/workspace/module2
   cd ~/workspace/module2
   ln -s ~/CourseData/HT_data/Module2/* .
```

**Notes**:

-   The `ln -s` command adds symbolic links of all of the files contained in the (read-only) `~/CourseData/HT_data/Module2` directory.

### Input files

Our data set consists of 100 bp paired-end Illumina reads. The reads for the child (NA12878) are contained in the files `NA12878_CBW_chr1_R1.fastq.gz` and `NA12878_CBW_chr1_R2.fastq.gz`. To inspect their contents:

```
   less NA12878_CBW_chr1_R1.fastq.gz
   less NA12878_CBW_chr1_R2.fastq.gz
   
   # OR, alternatively
   zcat NA12878_CBW_chr1_R1.fastq.gz | head -n 8
   zcat NA12878_CBW_chr1_R2.fastq.gz | head -n 8
```

**Notes**:

-   Type `q` to exit `less`.

<!-- -->

-   FASTQ links: [specification](http://en.wikipedia.org/wiki/FASTQ_format) (with base quality explanations).

Main Lab Steps
--------------

### Run QC on input data (optional)

The input reads can contain several types of biases and errors. It is good practice to start an analysis by running a program like `fastqc` that can identify various such problems.

```
   mkdir fastqc-reports
   fastqc -o fastqc-reports NA12878*.fastq.gz
```

**Notes**:

-   The `-o` parameter tells `fastqc` to place the reports in the directory `fastqc-reports`.

<!-- -->

-   To visualize the reports, open a web browser on your laptop, and navigate to `http://cbwXX.dyndns.info/`, where `XX` is the id of your node. You should be able to find there the directory hierarchy under `~/workspace/` on your node. Go to the `fastqc-reports` subdirectory, and click on one of the HTML files there.

<!-- -->

-   `fastqc` links: [homepage](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/), [modules description](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/3%20Analysis%20Modules/); [examples of good/bad data](http://www.slideshare.net/cursoNGS/ngs-qc-granadajun2011).

### Trim reads (optional)

The quality of Illumina sequencing reads drops towards the ends of the read. The tail (and sometimes the start) of a read can contain unreliable bases with low quality value. Here, we use the simple program seqtk written by Heng Li (the author of BWA) to trim the ends of the FASTQ reads before they are fed into the aligner. This step is crucial when performing assembly of a novel genome, but somwhat less important for basic alignment. We include it here for reference.

```
   seqtk trimfq -q .05 NA12878_CBW_chr1_R1.fastq.gz |
   gzip >NA12878_CBW_chr1_R1.trim.fastq.gz
   seqtk trimfq -q .05 NA12878_CBW_chr1_R2.fastq.gz |
   gzip >NA12878_CBW_chr1_R2.trim.fastq.gz
   
   # visualize trimming effects
   diff <(zcat NA12878_CBW_chr1_R1.fastq.gz | head -n 400) 
   <(zcat NA12878_CBW_chr1_R1.trim.fastq.gz | head -n 400) | less
```

**Notes**:

-   The `-q .05` parameter instructs the program to trim read ends when the error rate increases above `.05`. This corresponds to a base quality of about 13. The connection between error rate `e` and quality value `v` is: `v = -10 * log10(e)`. (E.g., `-q .01` is more strict, and corresponds to quality value 20.)

<!-- -->

-   The reads are not trimmed the first time a lower quality base is encountered. Instead, a smoothing formula is used.

<!-- -->

-   Both ends of a read are timmed, not only the tail.

<!-- -->

-   seqtk links: [git repo](https://github.com/lh3/seqtk).

### Read alignment with BWA

The read aligner, BWA-MEM, aligns each mate of a paired-end read at the same time and produces a SAM file containing the alignments. The following command aligns the reads for the child (NA12878):

```
   bwa mem -t 4 -M -R "@RG\tID:NA12878\tSM:NA12878\tLB:NA12878" hg19.fa 
   NA12878_CBW_chr1_R1.trim.fastq.gz NA12878_CBW_chr1_R2.trim.fastq.gz 
   >NA12878.bwa.sam
```

**Notes**:

-   If you skipped the read trimming step, you can use the untrimmed reads instead: `NA12878_CBW_chr1_R1.fastq.gz` and `NA12878_CBW_chr1_R2.fastq.gz`.

<!-- -->

-   The command will run for 1-2 minutes on this (tiny) dataset.

<!-- -->

-   The command line parameters are:
    -   `-t 4`: Use all 4 processors of the Amazon node to align these reads.
    -   `-M`: Mark shorter split hits as secondary (for Picard/GATK compatibility). Split read support is fairly new and many downstream tools do not support that functionality yet.
    -   `-R`: Specifies the read group. This is where you can specify which sample, library, sequencing platform, etc. were used when generating these reads.

<!-- -->

-   The remaining command line arguments:
    -   `hg19.fa`: The name of the FASTA reference sequence.
    -   `NA12878_CBW_chr1_R1.trim.fastq.gz`: The reads for the first mate.
    -   `NA12878_CBW_chr1_R2.trim.fastq.gz`: The reads for the second mate.
    -   `NA12878.bwa.sam`: The output file that will contain our alignments (in SAM format).

<!-- -->

-   BWA links: [homepage](http://bio-bwa.sourceforge.net/); [manual](http://bio-bwa.sourceforge.net/bwa.shtml) (including option descriptions).

<!-- -->

-   There seems to be no command line option to check which version of `bwa` is installed. However, as we will see shortly, the `bwa` version is saved inside the mapping file.

### SAM format

Alignment (or mapping) files are stored in SAM format (a special form of plain text) or BAM format (a compressed version of SAM). Conversions between these formats are done using the `samtools` command. Each file contains a header and a body. To inspect them:

```
   # header & body
   less NA12878.bwa.sam
   samtools view -h NA12878.bwa.sam | less
   
   # header only
   samtools view -H NA12878.bwa.sam | less
   
   # body only
   samtools view NA12878.bwa.sam | less
   samtools view NA12878.bwa.sam | cut -f -9 | head
```

**Notes**:

-   `samtools` links: [homepage](http://www.htslib.org/); [manual (for 1.1)](http://www.htslib.org/doc/samtools-1.1.html). Check version: `samtools --version=`.

<!-- -->

-   SAM format: [specification](http://samtools.github.io/hts-specs/SAMv1.pdf).

<!-- -->

-   The SAM header contains several types of lines:
    -   `HD`: Specifies SAM file format, and whether the file is sorted by coordinate. If missing, the file is not sorted.
    -   `SQ`: The name and length of a reference chromosome (or contig).
    -   `RG`: Information about a specific read group stored in this file.
    -   `PG`: Command line and version of the programs used to process this file.

<!-- -->

-   The SAM body contains lines describing each alignment. The fields in each line are:

`   SN1114:102:D16Y9ACXX:4:2314:4533:95343 99 chr1 6964790 0 35M66S = 6965252 483`

-   To decode the FLAG value, use e.g., `samtools flags 99`. The individual flag names are described in the SAM format specification.

### Read alignment with Bowtie2 (optional)

This step is completely optional, you can simply skip it and continue using only BWA alignments. If you are interested in running Bowtie2 to align the reads, try:

```
   bowtie2 --threads 4 --phred33 -x hg19 
   --rg-id NA12878 --rg SM:NA12878 --rg LB:NA12878 
   -1 NA12878_CBW_chr1_R1.trim.fastq.gz -2 NA12878_CBW_chr1_R2.trim.fastq.gz 
   >NA12878.bt2.sam
```

**Notes**:

-   The command line parameters are:
    -   `--threads 4`: Use multithreading with 4 cores.
    -   `--phred33`: Fastq reads use PHRED 33 for base qualities (as opposed to PHRED 64). See the FASTQ format [specification](http://en.wikipedia.org/wiki/FASTQ_format).
    -   `-x hg19`: Genome index to load.
    -   `--rg-id`: Read group identifier.
    -   `--rg`: Extra fields to set on the `@RG` SAM line.
    -   `-1`, `-2`: Fastq reads corresponding to first and second mate.

<!-- -->

-   The output of Bowtie2 should be freely exchangeable with the BWA output. The alignments of most reads that have a unique best alignment should be identical. For other reads, different aligners might take different decisions.

<!-- -->

-   Bowtie2 links: [homepage](http://bowtie-bio.sourceforge.net/bowtie2/index.shtml); [manual](http://bowtie-bio.sourceforge.net/bowtie2/manual.shtml). Check version: `bowtie2 --version`.

### Converting SAM to BAM

To convert a file in SAM format to BAM format:

```
   samtools view -b NA12878.bwa.sam >NA12878.bwa.bam
   
   # check file sizes
   ls -lh NA12878.bwa.[sb]am
```

**Notes**:

-   In the past, the `-S` flag was used to specify that the input is in SAM format. With recent versions of `samtools`, this is autodetected.

<!-- -->

-   The `-b` flag specifies that the output should be in `BAM` format.

<!-- -->

-   Observe the difference in file sizes. BAM format is compressed SAM. In general, using BAM will not only save storage space, but also speed up programs because it takes less time to read the input.

<!-- -->

-   The `samtools` commands for inspecting the header and body of the file work on BAM format as well.

<!-- -->

-   If the read aligner you are using can output SAM format to stdout, you can convert it immediately into BAM (in order to save disk space) using Linux pipes:

```
   # no need to run this command in this lab
   [aligner command sending SAM output to stdout] | samtools view -b - >output.bam
```

### Inspecting a BAM file

To inspect a BAM alignment file, use:

```
   # basic statistics
   samtools flagstat NA12878.bwa.bam
   
   # show only secondary alignments
   samtools view -f 0x100 NA12878.bwa.bam | less
   
   # show all alignments for a read that has secondary alignments
   samtools view NA12878.bwa.bam |
   grep $(samtools view -f 0x100 NA12878.bwa.bam | cut -f 1 | head -n 1) |
   column -t |
   less
```

**Notes**:

-   Notice that BWA output (as opposed to Bowtie2) contains alignments marked as secondary (SAM flag mask `0x100`).

<!-- -->

-   The `-f 0x100` option prints those alignments whose FLAG contains a 1 in every bit position where the argument of `-f` also has a 1. In this case, `0x100` selects alignments that are marked as secondary.

<!-- -->

-   The last command works as follows:
    -   The command inside `$(...)` is executed, and its output is used as argument to `grep`. The command prints the name of the first read in the SAM file that has a secondary alignment.
    -   `grep`: Filter out everything except for the alignments of the read selected above.
    -   `column -t`: Align the fields of different rows for easy display.

<!-- -->

-   To inspect the FLAG values use `samtools flags` and, e.g., `samtools flags 81`.

### Sorting a BAM file

The SAM/BAM files produced by an aligner are **not** usually guaranteed to be sorted by either read name or coordinate. Their only structure is that multiple alignments of the same read, or the alignments of the 2 reads in a pair, are usually consecutive. (As a technical side-note: The reason that SAM/BAM output is not usually sorted in the same way as the FASTQ input is because of read aligner multithreading.) Most downstream analysis tools are interested in looking at the alignments in specific regions of interest in the reference. For this reason, we sort BAM files by coordinate.

```
   samtools sort -@ 4 -m 5G -T /tmp/NA12878.bwa.sort -o NA12878.bwa.sort.bam NA12878.bwa.bam
```

**Notes**:

-   The command line options are:
    -   `-@ 4`: Use multi-threading with 4 cores.
    -   `-m 5G`: Use approximately 5G of RAM.
    -   `-T PREFIX`: Spill RAM into temporary files be named `PREFIX.nnnn.bam`.
    -   `-o`: Output file name. If not given, output is sent to stdout, but then `-O bam` is required to specify output format.

<!-- -->

-   Sorting a large BAM file is a very memory-intensive operation: To output even only the first alignment on `chr1`, `samtools sort` must inspect *all other alignments* in the entire BAM file. A BAM file produced by BWA for 30x coverage of a human sample can be in the order of 250G. Since compute nodes do not usually have this much RAM, `samtools sort` must spill RAM into temporary files. In order to prevent spilling into the wrong directory, the `-T` option seems to be mandatory in recent versions of `samtools`.

<!-- -->

-   A sorted BAM file can be compressed better than an unsorted one. For this reason, sorted BAM files are even smaller than unsorted ones. In the case of this lab, we cannot really see this reduction because the reads we are using come from a very small region of the reference.

### Removing duplicates

To remove optical and PCR duplicates, we use Picard:

```
   java -Xmx2g -jar /usr/local/picard-tools-1.124/picard.jar MarkDuplicates 
   INPUT=NA12878.bwa.sort.bam OUTPUT=NA12878.bwa.sort.rmdup.bam 
   METRICS_FILE=NA12878.bwa.sort.rmdup.txt REMOVE_DUPLICATES=true 
   VALIDATION_STRINGENCY=LENIENT
```

**Notes**:

-   The java command line options are:
    -   `-Xmx2g`: Use 2G of RAM.
    -   `-jar`: Location of the Picard jar file.

<!-- -->

-   The Picard command line options are:
    -   `MarkDuplicates`: Tool to run (Picard is a bundle containing many tools).
    -   `INPUT`: Input file.
    -   `OUTPUT`: Output file.
    -   `METRICS`: File to write duplication metrics to (required).
    -   `REMOVE_DUPLICATES=true`: Actually remove duplicates. If not given, duplicates are only marked as such using SAM flags.
    -   `VALIDATION_STRINGENCY=LENIENT`: This is a general Picard option (shared by many tools) that disables the sometimes overly-strict validation of SAM files.

<!-- -->

-   Picard links: [homepage](http://broadinstitute.github.io/picard/index.html); [Picard options](http://broadinstitute.github.io/picard/command-line-overview.html#Overview); [MarkDuplicates options](http://broadinstitute.github.io/picard/command-line-overview.html#MarkDuplicates); [SAM differences](http://broadinstitute.github.io/picard/sam-differences.html) (between Picard and samtools).

For a very rough visualization of duplicates being removed, try:

```
   diff -c <(samtools view NA12878.bwa.sort.bam | cut -f -9) 
   <(samtools view NA12878.bwa.sort.rmdup.bam | cut -f -9) |
   less
```

**Notes**:

-   The command shows the differences (`diff`) with context (`-c`) between the outputs of 2 other commands (invoked by `<(...)`). We only look for differences in the first 9 SAM fields.

<!-- -->

-   The reason this is "rough" is because duplicates are not always mapped to the exact same position, so they can be harder to see. Because of trimming, the lengths of duplicate reads can be different, but they are still found by Picard.

### Indexing BAM files

By creating a BAM file index, various tools are able to quickly retrieve alignments to specific reference regions.

```
   samtools index NA12878.bwa.sort.rmdup.bam
```

### Indel realignment

During normal read alignment, the aligner handles each read separately when figuring out where to place the read. When it comes to INDELs, it is often advantageous to looks at all of the reads at a particular locus in order to fine-tune alignments. In this section, we will use the GATK IndelRealigner to fix our alignments.

The following command determines suspicious intervals which are likely in need of realignment:

```
   java -Xmx2g -jar /usr/local/GATK/GenomeAnalysisTK.jar 
   -T RealignerTargetCreator -R hg19.fa -L chr1:17704860-18004860 
   -I NA12878.bwa.sort.rmdup.bam -o NA12878.intervals
```

The following command runs the realigner on the suspicious intervals identified in the previous step:

```
   java -Xmx2g -jar /usr/local/GATK/GenomeAnalysisTK.jar 
   -T IndelRealigner -R hg19.fa -L chr1:17704860-18004860 -targetIntervals NA12878.intervals 
   -I NA12878.bwa.sort.rmdup.bam -o NA12878.bwa.sort.rmdup.realign.bam
```

**Notes**:

-   GATK links: [homepage](https://www.broadinstitute.org/gatk/); [RealignerTargetCreator manual](https://www.broadinstitute.org/gatk/guide/tooldocs/org_broadinstitute_gatk_tools_walkers_indels_RealignerTargetCreator.php); [IndelRealigner manual](https://www.broadinstitute.org/gatk/guide/tooldocs/org_broadinstitute_gatk_tools_walkers_indels_IndelRealigner.php).

To find out alignment differences before and after realignment, try:

```
   diff <(samtools view NA12878.bwa.sort.rmdup.bam | cut -f -6 | sort) 
   <(samtools view NA12878.bwa.sort.rmdup.realign.bam | cut -f -6 | sort) |
   grep '^[<>]' |
   sort -k 4 -k 5n |
   less
```

**Notes**:

-   The command above only finds alignment differences between the BAM files, but it is not great for visualizing those differences.

<!-- -->

-   The difference (`diff`) is run between alignments sorted by name, because the alignment positions might change.

<!-- -->

-   We only look at differences in SAM fields 1-6 because fields 7-9 contain information about the mate.

<!-- -->

-   The `grep` command removes some information printed by `diff` other than the actual differences.

<!-- -->

-   The final sort is by chromosome (now in field 4 because of the initial `<>` symbols) and numerical by alignment position.

<!-- -->

-   The characters `<` / `>` indicate that alignment appeared before/after realignment.

Tools that enable better alignment visualization are the subject of the next workshop module. Here, we use a very basic visualzation technique to see the effect of indel realignment:

```
   samtools tview -d H -p chr1:17711651 
   NA12878.bwa.sort.rmdup.bam hg19.fa >realign.before.17711651.html
   samtools tview -d H -p chr1:17711651 
   NA12878.bwa.sort.rmdup.realign.bam hg19.fa >realign.after.17711651.html
```

Next, open a web browser on your laptop, and navigate to `http://cbwXX.dyndns.info/`, where `XX` is the id of your node. You should be able to find there the directory hierarchy under `~/workspace/` on your node. Open the before and after files in different tabs, and switch between them to see the alignment differences.

**Notes**:

-   `samtools tview` is a very basic visualization tool. You will probably want to use IGV or Savant for this type of a job, but those will be covered in the next module. Its output is not well documented (e.g. dots vs commas), but you can make sense of most of it. The `-d H` selects HTML output. `tview` can even be run in interactive (text) mode in your terminal.

<!-- -->

-   The chromosome position (`17711651`) was selected based on the prior `diff` command. You can rerun the visualization commands on other regions containing clusters of alignment differences. E.g.: `17800121`, `17812601`.

<!-- -->

-   Note how mismatches (potential "SNPs") around short indels at the end of the read disappear after realignment. The reason is that GATK takes local information into consideration when realigning, while this information is unavailable to the read mappper (BWA, Bowtie2).

Summary
-------

In this lab, we aligned reads from the sample NA12878 to the reference genome `hg19`:

-   We became familiar with FASTQ and SAM/BAM formats.

<!-- -->

-   We trimmed unreliable bases from the read ends using SeqTK.

<!-- -->

-   We aligned the reads to the reference using BWA.

<!-- -->

-   We sorted the alignments by chromosome position using SamTools.

<!-- -->

-   We removed PCR duplicates using Picard.

<!-- -->

-   We realigned short indels using GATK.

If you ever became truly lost in this lab, you can use the lab script to automatically perform all of the steps listed here. If you are logged into your CBW account, just run: `~/CourseData/HT_data/Module2/scripts/module2-run`. This produces all alignment files for NA12878. To produce them for NA12891 and NA12892 as well, run the same command with the single argument `all`.
