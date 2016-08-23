1) A file decompression tool. For Windows/PC – 7zip (http://www.7-zip.org/). For Linux – gzip (http://www.gzip.org). For Mac – already there.
<br>
<br>
2) A robust internet browser such as Firefox or Safari (Internet Explorer and Chrome are not recommended because of Java issues).
<br>
<br>
3.1) Install Cytoscape 3.2.1: http://www.cytoscape.org/
<br>
NOTE - Instructions about Cytoscape installation have changed repeatedly because of problems with the app support. We will be using version 3.2.1, not the older version 2.8.2. We will not be using Google Pie Chart app for this reason.
<br>
3.2) Within Cytoscape, select Apps from the header bar —> select App Manager. Search for enhancedGraphics in the Search box. Select enhancedGraphics and click Install.
<br>
<br>
4) A PDF viewer (Adobe Acrobat or equivalent).
<br>
<br>
5) Install Java -The visualization program that we will be using (IGV) requires Java. Check if you have Java installed: https://www.java.com/verify/ and download Java if you do not have it installed.
<br>
<br>

7) SSH client - Mac and Linux users already have a command line ssh program that can be run from the terminal. For Windows users, please download PuTTY:http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html
<br>
<br>
8) SCP/SFTP client - We will be moving data from the servers to the student laptops for visualization. Mac and Linux users already have a command line scp and sftp program. For Windows users, please install WinSCP: http://winscp.net/eng/download.php
<br>
<br>
9) Install STAMP for your machine.<br>
<br>
<b>Windows</b><br>
1. Download and install STAMP:
https://github.com/dparks1134/STAMP/releases/download/v2.0.9/STAMP_2_0_9.exe
<br>
<br> 
<br>
<b>Mac OSX</b><br>
1. Install Xcode/Command line Tools:  https://developer.apple.com/xcode/downloads/ <br>
2. Install the Anaconda package for Python v2.7: http://continuum.io/downloads <br>
3. Install PIP by opening a “Terminal” Window (Application->Utilities->Terminal) and then type the following command (and press enter):

``` 
 sudo easy_install pip
```

4.Install numpy (again type the following command in the Terminal Window):

```
 pip install numpy 
```

5. Install a scipy (again type the following command in the Terminal Window):
 conda install scipy
 
6. Install STAMP (again type the following command in the Terminal Window):
 pip install STAMP 
 
7. Open new terminal session and type “STAMP” to launch the graphical interface.
<br>
<br> 
<br>
<b>Linux</b><br>
1. From a Terminal/Console window type:
 sudo apt-get install freetype* python-pip python-dev python-numpy python-scipy python-matplotlib
 
2. Then type:

```
 sudo pip install STAMP
```

<br>
<br>
