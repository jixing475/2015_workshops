<b>Programs to Install:</b>

1) Install R 3.1.0 which can be downloaded from http://probability.ca/cran/
If you need help on installing R see bullet 13 below for assistance.
<br>
<br>
2) Install the BioConductor core packages. To do this, open R and type at the > prompt, then wait for the prompt to reappear and type second command:

```
 source("http://bioconductor.org/biocLite.R");
 biocLite();
```
<br>
<br>
3) Install further R packages ggplot2 and gplots. Again at the > prompt type the following commands. Wait for the prompt to return between commands:

```
 install.packages("ggplot2");
 install.packages("gplots");
```
<br>
<br>
4) A robust text editor. For Windows/PC - notepad++ (http://notepad-plus-plus.org/). For Linux - gEdit  (http://projects.gnome.org/gedit/). For Mac – TextWrangler (http://www.barebones.com/products/textwrangler/download.html)
<br>
<br>
5) A file decompression tool. For Windows/PC – 7zip (http://www.7-zip.org/). For Linux – gzip 1.3.3 (http://www.gzip.org). For Mac – already there.
<br>
<br>
6) fastqc – This tool is available for Windows/Mac/Linux here: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
<br>
<br>
7) A robust internet browser such as Firefox or Safari (Internet Explorer and Chrome are not recommended because of Java issues).
<br>
<br>
8) Java -The visualization program that we will be using (IGV) requires Java. Check if you have Java installed: https://www.java.com/verify/ and download Java if you do not have it installed. 
<br>
<br>
9) Integrative Genomics Viewer 2.3 (IGV) - Once java is installed, go to http://www.broadinstitute.org/igv/ and register in order to get access to the downloads page. Once you have gained access to the downloads page, click on the appropriate launch button that matches the amount of memory available on your laptop (if you have space, 1.2GB is good, more is better). Chrome: Chrome does not launch "java webstart" files by default. Instead, the launch buttons below will download a "jnlp" file. This should appear in the lower left corner of the browser. Double-click the downloaded file to run. Windows users:  To run with more than 1.2 GB you must install  64-bit Java.  This is often not installed by default even with the latest Windows 7 machines with many GB of memory. In general trying to launch with more memory than your OS/Java combination supports will result in the obscure error "could not create virtual machine".
<br>
<br>
10) SSH client - Mac and Linux users already have a command line ssh program that can be run from the terminal. 
For Windows users, please download PuTTY:
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html 
<br>
<br>
11) SCP/SFTP client - We will be moving data from the servers to the student laptops for visualization. Mac and Linux users already have a command line scp and sftp program. 
For Windows users, please install WinSCP:
http://winscp.net/eng/download.php 
<br>
<br>
12) A PDF viewer (Adobe Acrobat or equivalent).
<br>
<br>
13) For help installing R, you may find the following directions helpful resources:
Tutorial on how to install R on windows only look at the "getting started" section: http://www.biostat.wisc.edu/~kbroman/Rintro/Rwin.html  
and MACS only look at the "getting started" section: http://www.biostat.wisc.edu/~kbroman/Rintro/Rmac.html
