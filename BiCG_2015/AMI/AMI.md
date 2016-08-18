---
layout: post2
permalink: /bioinformatics_for_cancer_genomics_AMI_2015/
title: BiCG AMI
header1: Bioinformatics for Cancer Genomics AMI 2015
header2: Workshop pages for students
image: CBW_cancerDNA_icon-16.jpg
---

Every year after the workshops, we make a public Amazon server image (AMI) based on the server we used. This image contains all the tools we used in the workshop.

Launching the AMI
=================

-   Sign up for an AWS account
-   You want to launch a computing server – EC2

![AMI EC2](https://github.com/bioinformatics-ca/2015_workshops/blob/master/BiCG_2015/AMI/AMI_1.png?raw=true)

-   Click the launch button

![AMI launch button](https://github.com/bioinformatics-ca/2015_workshops/blob/master/BiCG_2015/AMI/AMI2.png?raw=true)

-   Select CBW image by searching "Community AMIs" with "CBW" or AMI id and choose the one you used in the workshop.

![AMI choose AMI](https://github.com/bioinformatics-ca/2015_workshops/blob/master/BiCG_2015/AMI/AMI3.png?raw=true)

-   Choose an instance type, we used m3.xlarge in the workshop
-   Configure Instance (you can use the default)
-   Add storage for workspace

![AMI storage](https://github.com/bioinformatics-ca/2015_workshops/blob/master/BiCG_2015/AMI/AMI4.png?raw=true)

-   Add tags if you want
-   Configure security group to allow services like ssh, http, ...
-   You need to create or choose key pair for the new server. Remember to download the key pair you created or you will not be able connect to the new server.

![AMI key](https://github.com/bioinformatics-ca/2015_workshops/blob/master/BiCG_2015/AMI/AMI5.png?raw=true)

-   Launch!

Data set
========

Please follow the links on our wiki page to download the data sets we used in the workshop. You may need load public data sets that contains the reference genomes (e.g. hg19). You can upload your own or download from some sources like we talked about in the workshop. Free available S3 buckets are 1000 Genomes, GenBank, etc. <http://aws.amazon.com/datasets?_encoding=UTF8&jiveRedirect=1>
