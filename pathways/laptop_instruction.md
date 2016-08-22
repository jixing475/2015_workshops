
1) A robust internet browser such as Chrome (Internet Explorer is not recommended). Firefox and Safari are also fine.


2) Install Cytoscape 3.2.1: http://www.cytoscape.org


3) Within the Cytoscape program, install the following Cytoscape plugins. <br>
From the menu bar, Apps >  Manage Apps <br>
Within all apps, Search for the following and install:<br>
 jActiveModules (should already be installed. Install if not)
 GeneMania (should already be installed. Install if not).
 Reactome FI Plugin 


4) Install the data set within GeneMANIA.
 Select GeneMania from Apps Manager → Choose Another Data Set.
 From the list of available data sets, select the most recent (2014-08-12/1 June 2014) and under Include only these networks: select All → Download.
 An Install Window will pop-up. Select H.Sapiens Human (2384 MB) → Install
 This requires time and a good network connection to download completely, so be patient.


5) Install Enrichment Map app in Cytoscape, but this app must be retrieved from Bader lab (Do NOT install from App Manager): http://www.baderlab.org/Software/EnrichmentMap
 Go to section Cytoscape 3 / Development Version
 Click on Enrichment Map plugin (v2.0.1 Build 500)
 Download (save) the zip file on your computer
 Unzip the folder
 Name of the file: enrichmentmap-2.1.0-r98d891f_500_EM_Cyto3_port-small.jar


To install the Enrichment Map app in Cytoscape, within Cytoscape:
 Locate Apps in the Cytoscape menu and choose the App Manager option.
 Select the Install Apps tab and click on Install from File … (this button is in bottom left of panel)
 Browse your computer and select the enrichment map jar file (enrichmentmap-2.1.0-r98d891f_500_EM_Cyto3_port-small.jar)


4.6) Java -The visualization program that we will be using (IGV) requires Java. Check if you have Java installed: https://www.java.com/verify/ and download Java if you do not have it installed. Java Version 6, 7 or 8 is required to run GSEA.


4.7) Install GSEA. 
 Go to the GSEA page: http://www.broadinstitute.org/gsea/index.jsp
 Register
 Login
 In menu, choose Downloads 
 Go to the javaGSEA Java Jar file section and download the gsea2-2.2.0.jar file and save in your Documents folder.


To install GSEA, you must use the command line. You will need to open a terminal and execute the install commands. Since we will need to run GSEA this same way each time, it will be a good idea to save this information on how to run GSEA.

<b>(MAC/Linux Computer)</b>
 On a MAC, the Terminal window is located in Applications/Utilities. Tip: add the terminal window to your dock so it is easy to open when needed.
 At the prompt, type the command in your terminal window and hit enter:
 
 java -Xmx2G -jar ~/Documents/gsea2-2.2.0.jar


<b>(PC/Windows Computer)</b>
 On Windows, go to the start icon and type cmd (for command prompt) in the search box. 
 At the prompt, type the following commands, hitting enter in between each command and waiting for the prompt before the next command:
 
 cd Documents
 java -Xmx2G -jar gsea2-2.2.0.jar


8) A PDF viewer (Adobe Acrobat or equivalent).
