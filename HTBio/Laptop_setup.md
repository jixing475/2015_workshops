1) Install R 3.1.3 which can be downloaded from http://probability.ca/cran/
If you already have R installed, then you should be fine.
If you need help on installing R see below for assistance.


2) BioConductor core packages. To do this, open R and type at the > prompt, then wait for prompt and type second command:

  source("http://bioconductor.org/biocLite.R");

  biocLite();


3) A robust text editor. For Windows/PC - notepad++ (http://notepad-plus-plus.org/). For Linux - gEdit (http://projects.gnome.org/gedit/). For Mac – TextWrangler (http://www.barebones.com/products/textwrangler/download.html)


4) A file decompression tool. For Windows/PC – 7zip (http://www.7-zip.org/). For Linux – gzip (http://www.gzip.org). For Mac – already there.


5) fastqc – This tool is available for Windows/Mac/Linux here: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/


6) A robust internet browser such as Firefox or Safari (Internet Explorer and Chrome are not recommended because of Java issues).


7) Java -The visualization program that we will be using (IGV) requires Java. Check if you have Java installed: https://www.java.com/verify/ and download Java if you do not have it installed. 


8) Integrative Genomics Viewer 2.3 (IGV) - Once java is installed, go to http://www.broadinstitute.org/igv/ and register in order to get access to the downloads page. Once you have gained access to the downloads page, click on the appropriate launch button that matches the amount of memory available on your laptop (if you have space, 1.2GB is good, more is better). Chrome: Chrome does not launch "java webstart" files by default. Instead, the launch buttons below will download a "jnlp" file. This should appear in the lower left corner of the browser. Double-click the downloaded file to run. Windows users: To run with more than 1.2 GB you must install 64-bit Java. This is often not installed by default even with the latest Windows 7 machines with many GB of memory. In general trying to launch with more memory than your OS/Java combination supports will result in the obscure error "could not create virtual machine".


9) Savant Genome Browser – http://genomesavant.com/p/savant/index


10) SSH client - Mac and Linux users already have a command line ssh program that can be run from the terminal. For Windows users, please download PuTTY:http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html


11) SCP/SFTP client - We will be moving data from the servers to the student laptops for visualization. Mac and Linux users already have a command line scp and sftp program. For Windows users, please install WinSCP: http://winscp.net/eng/download.php


12) Install Cytoscape 3.2.1: http://www.cytoscape.org/ 
http://chianti.ucsd.edu/cytoscape-3.2.1/


13) Within the Cytoscape program, install the following Cytoscape plugins. 
From the menu bar, Apps >  Manage Apps 

Within all apps, Search for the following and install:
  •	jActiveModules (should already be installed. Install if not.)
  •	GeneMania (should already be installed. Install if not.)
  •	EnrichmentMap
  •	Reactome FI Plugin 

Select GeneMania from Apps Manager → Choose Another Data Set. 

From the list of available data sets, select the most recent (2014-08-12/1 June 2014) and under Include only these networks: select All → Download. 

An Install Window will pop-up. Select H.Sapiens Human (2384 MB) → Install

This requires time and a good network connection to download completely, so be patient.


14) A PDF viewer (Adobe Acrobat or equivalent).
