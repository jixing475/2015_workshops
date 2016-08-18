########################  SURVIVAL LAB  OUTLINE ##########################
#The goal of the lab is to to learn to run Survival analysis using high
#resolution data. The lab is based on the MSKCC prostate cancer study
#(Taylor et al, Cell 2010; pdf file was provided prior to the workshop and
#was printed out for students), which published integrated genome and
#transcriptome analysis of ~200 tumour samples with rich clinical
#annotation. Using this data we will:
#  (1) Get an understanding of how to work with clinical data and learn
#  basic R functions for survival analysis. For this we will reproduce the
#  survival analysis of reported genomically distinct subgroups of PCa (as
#  in Figure 4 of the paper) using MSKCC clinical info table. (2) To learn
#  how to discover novel subgroups of tumours that might be associated with
#  outcome. For this we will use processed whole genome copy number data of
#  tumours for unsupervised hirarchical clustering. The observed subclasses
#  of tumours with different genomic landscape will be tested for
#  difference in survival. (3) To learn how to associate aberrations in
#  multiple genes (gene signatures) with outcome. For this, we will use the
#  list of 100 neuroendocrine associated genes and their CNA data that was
#  adapted form original CNA MSKCC data for the purposes of the lab. We
#  will explore how the aberrations in multiple genes effect outcome of
#  patients. (4) To learn how to use different data types (such as copy
#  number and gene expression) to associate aberrations within individual
#  candidate biomarker genes with outcome. For this we will use MSKCC
#  processed genome copy number (Agilent aCGH) and gene expression data
#  (Affymetrix Exon Array) to explore the impact of aberrations in PTEN,
#  and neuroendocrine markers (CHGA, CHGB, SYP). PTEN is the known tumour
#  supressor in PCa, which is frequently deleted/mutated/downregulated.
#  Neuroendocrine markers presense identifies an agressive phenotype of PCa
#  (neuroendocrine prostate cancer), which is associated with poor outcome.
#  There are many NE markers, of which the mentioned 3 genes are commonly
#  used for histological classification.
# 
# 
############   (1) Get an understanding of how to work with clinical data
############   and learn basic R functions for survival analysis.
############   ##########################
############ 
#########	Load the package	#############
library(survival)
#read the functions descriptions: Read about the syntax of the Kaplan-Meyer
#estimator function:
?survfit
#Read about the syntax of the log-rank test
?survdiff

#########	read the clinical data in	#############
#########
clinData<-read.table("TaylorClinicalData_for_CNA_data.txt", header = TRUE,
sep = "\t", na.strings = "NA", quote = "", comment.char = "")

#########	Run Kaplan-Meyer analysis #############
#########
#fit and plot Kaplan-Meyer curves for Primary vs Mets:
pFit <- survfit(Surv(BCR_FreeTime, BCR_Event) ~ Type, data = clinData)
plot(pFit, col = c("green", "purple")) legend("topright",
levels(clinData$Type), lty = 1, col = c("green", "purple"))

#########	Run Log-rank test #############
#########
survdiff(Surv(BCR_FreeTime, BCR_Event) ~ Type, data = clinData)

#define a custom function to pull the p-value out of the Log-rank test
getPval <- function(x) { if( is.matrix(x$obs)) etmp <- apply(x$exp, 1, sum)
else etmp <- x$exp df<- (sum(1 * (etmp > 0))) - 1 pv <- 1 - pchisq(x$chisq,
df) format(pv, digits = 3)
}
}
pValue<-getPval(survdiff(Surv(BCR_FreeTime, BCR_Event) ~ Type, data =
clinData))
#add p-value on the plot
legend("bottomright", paste("p-value=", pValue), col = "black")

#########	Subset the data to look at primary tumours only. Plot survival
#########	according to the tumour grade #############
#########
# subset the data to look at primary tumours only and re-construct the data
# object: 
#the factor has to be rebuilt since the column still knows about the #"NA"
#values; Use columns "Type" and "PathGGS" - Pathological Gleason Grade
#Score. 
subsetData<-subset(clinData, Type=="PRIMARY")
subsetData$Type<-factor(subsetData$Type)

pFit <- survfit(Surv(BCR_FreeTime, BCR_Event) ~ PathGGS, data = subsetData)
plot(pFit, col = c("green", "purple", "magenta", "blue", "orange"))
legend("topright", levels(subsetData$PathGGS), lty = 1, col = c("green",
"purple", "magenta", "blue", "orange"))
pValue<-getPval(survdiff(Surv(BCR_FreeTime, BCR_Event) ~ PathGGS, data =
subsetData)) legend("bottomright", paste("p-value=", pValue), col =
"black")


# The following will compare only two subgroups: grade 6 and 9
getPval(survdiff(Surv(BCR_FreeTime, BCR_Event) ~ PathGGS, data =
subset(subsetData, PathGGS == "6" | PathGGS == "9")))

#########	Exercise on your own: Plot survival according to the Copy
#########	number Cluster reported in Taylor et al (Figure 4)
#########	#############
#	Tip: the column containing cluster assignment is "Copy.number.Cluster"
#	Run survfit function for groups in that column. Run log-rank test and
#	report the p-value on the plot.  
#
#
#
############   (2) To learn how to discover novel subgroups of tumours that
############   might be associated with outcome.
############   ##############################
############ 
# a) Using MSKCC_PCa_RAE_gene_calls.txt file select top 500-1000 most
# variable genes.
#	Tip: RAE algorithm identifies genes that are copy number changed (0 -
#	normal; -1 - deleted heterozygously; -2 - deleted homozygously; >1 -
#	amplification). Use these scores to select most frequently aberrant
#	genes. 
# b) Cluster RAE scores of selected genes in GenePattern. Login to
# GenePattern server first using your own login. 
#	Tip: create gct input file; see example here:
#	MSKCC_PCa_RAE_gene_calls_top1000CNA_genes.gct; Tip: use unsupervised
#	clustering module of GenePattern with the following parameters:
#	city-block distance, complete linkage method. Check: compare your
#	clusering result with the Taylor et al. For this, label samples in
#	GenePattern with regard to the discovered clusters (1 through 6,
#	figure 4 from the paper). The sample label file to use is here:
#	MSKCC_sample_label_GenePattern.txt
# c) Inspect the sample dendrogram and define the number of clusters
# according to the genomic landscape (2,3,4 clusters). Save the image as
# png file
#	and the sample legend as well. Export cluster labels from GenePattern.
#	Tip: select the sample cluster dendrogram and one of the genes. Click
#	Menu->File-> Save Dataset. Save the file on the local drive. This file
#	will contain the sample list from the selected cluster. Tip: add
#	cluster information to the clinical info file using R functions or
#	Excel (VLOOKUP function). Note: several outlier samples will not be
#	assigned to major clusters. Assign NA to those samples.
# d) Run Kaplan-Meyer analysis to see the survival experience of discovered
# clusters. 
# 
#	Help: after discovering clusters and compiling a file with cluster
#	assignment following code can be used to run KM. Use
#	discovery_cluster_example.txt as an example. 
#
discoverClusters<-read.table("discovery_cluster_example.txt", header =
TRUE, sep = "\t", na.strings = "NA", quote = "", comment.char = "")
clusterClinData<-merge(clinData, discoverClusters, by.x="PCA.ID",
by.y="PCA.ID", all.x=TRUE) pFit <- survfit(Surv(BCR_FreeTime, BCR_Event) ~
cluster, data = clusterClinData) plot(pFit, col = c("green", "purple",
"magenta", "blue", "orange")) legend("topright",
levels(clusterClinData$cluster), lty = 1, col = c("green", "purple",
"magenta", "blue", "orange")) pValue<-getPval(survdiff(Surv(BCR_FreeTime,
BCR_Event) ~ cluster, data = clusterClinData)) legend("bottomright",
paste("p-value=", pValue), col = "black")

# Which cluster has the worst outcome? Check the survival difference
# between most aberrant tumours and most "normal" (flat) ones. Report the
# p-value.
# 
# 
############   (3) To learn how to associate aberrations in multiple genes
############   (gene signatures) with outcome.
#For this, we will use the list of 100 neuroendocrine associated genes and
#their CNA data that was adapted form original CNA MSKCC data for the
#purposes of the lab. Neuroendocrine genes up-regulation/copy number gain
#is associated with aggressive NEPC. Therefore, only gains of these genes
#will be of interest. 
#
#
d<-clinData
                                        # BAALC is the last gene. the next
                                        # code summarizes the number of
                                        # samples with a certain NE gene
                                        # aberated. 
sink("summaryPerGeneNE.txt") for( colNum in 2:108 ) {
print(names(d)[colNum]) print(summary(d[[colNum]]))
}
sink()
                                        # just look at the gains; ignore
                                        # instances of losses. these are
                                        # all the call types
                                        # 
                                        # CN Gain CN Gain, High Copy Gain
                                        # CN Loss CN Loss, Homozygous Copy
                                        # Loss High Copy Gain Homozygous
                                        # Copy Loss
                                        # 
                                        # data frame copy for gains only
g <- d

write.csv(g, file = "gNE.csv")
                                        # translate the CN calls into
                                        # numbers
for( colNum in 2:108 ) {
                                        # losses are assigned 0; neglected
    ## colNum <- 10
    g[[colNum]] <- sub("CN Loss, Homozygous Copy Loss", "0", g[[colNum]])
    g[[colNum]] <- sub("Homozygous Copy Loss", "0", g[[colNum]])
    g[[colNum]] <- sub("CN Loss", "0", g[[colNum]])
                                        # gains are assigned 1, counted in.
    g[[colNum]] <- sub("CN Gain, High Copy Gain", "1", g[[colNum]])
    g[[colNum]] <- sub("High Copy Gain", "1", g[[colNum]]) g[[colNum]] <-
    sub("CN Gain", "1", g[[colNum]]) g[[colNum]][ g[[colNum]]==""] <- 0
    g[[colNum]] <- as.numeric( g[[colNum]] )
}
}
                                        # gives the number of samples that
                                        # have a gain aberation for a
                                        # certain gene. 
sink("number_of_samples_with_amplification_per_gene.txt") for( colNum in
2:108 ) { print(names(g)[colNum]) print(sum(g[[colNum]]))
}
sink()

                                        # sum the amplified genes per sample
                                        # 
g$NEnumber <- apply(subset(g, select = 2:108), 1, sum)

                                        # test if this NEnumber is
                                        # predictive for outcome. Maybe
                                        # there needs to be two groups
                                        # based on the NEnumber
                                        # 
                                        # only can do KM on those samples
                                        # that have a time to recurrence. 
                                        # 
g <- subset(g, ! is.na(BCR_FreeTime))

pdf(file="KMplotForAllNEnumberCutoffs.pdf", width=20, height=20)

                                        # list all the NE numbers within
                                        # the data set to then loop through
                                        # them all
allNEnums <- sort(unique(g$NEnumber))
                                        # loop through all the NE numbers
                                        # and do a KM plot with p-value
for( NEnumCutOff in allNEnums[-1]) {
    ## NEnumCutOff <- 14
    g$NEnumGroup <- "low" g$NEnumGroup[ g$NEnumber >= NEnumCutOff ] <-
    "high" g$NEnumGroup <- factor(g$NEnumGroup)

    gSurFitGemcap <- survfit(Surv(time = BCR_FreeTime, event = BCR_Event) ~
    NEnumGroup , data = g)

    plot(gSurFitGemcap, col = c("green", "purple"), main = paste("NEnumber
    cutoff: >=", NEnumCutOff, ", p-value: ", getPval( survdiff(Surv(time =
    BCR_FreeTime, event = BCR_Event) ~ NEnumGroup, data = g) ) ) )

    abline(v = c(36, 60), col = c("blue", "red"), lty = 2) abline(h = 0.5,
    col = "gray", lty = 2) legend("topright", paste("NE number",
    levels(g$NEnumGroup), summary(g$NEnumGroup)[1:2]), lty = 1, col =
    c("green", "purple")) legend("bottomright", c("3 years", "5 years"),
    lty = 2, col = c("blue", "red"))

  par(xpd=TRUE)
}
dev.off()


############   (4) To learn how to use different data types (such as copy
############   number and gene expression) ############ to associate
############   aberrations within individual candidate biomarker with
############   outcome.		############
# read the clinical data, used to be clinData
cd <- read.table("TaylorClinicalData_for_CNA_data.txt", header = TRUE, sep
= "\t", na.strings = "NA", quote = "", comment.char = "")

# copy number data
cn <- read.table("MSKCC_PCa_RAE_gene_calls.txt", header=TRUE, sep="\t",
na.strings = "NA", quote = "", comment.char = "")

# gene expression data
ge <- read.table("MSKCC_PCa_mRNA_Zscores.txt", header=TRUE, sep="\t",
na.strings = "NA", quote = "", comment.char = "")


# toss the duplicated gene symbols in cn
cn <- cn[! duplicated(cn$GeneSymbol), ]

# only use samples that have ge cn and cd information
cnSamples <- names(cn)[3:length(cn)] geSamples <- names(ge)[3:length(ge)]
cdSamples <- cd$PCA.ID

# copy number samples that also exist in gene expression
cnGeSamples <- cnSamples[cnSamples %in% geSamples]
# above samples also found in clinical information
cnGeCdSample <- cnGeSamples[cnGeSamples %in% cdSamples]

# add the gene id and gene symbol to the shared sample so they kept in the
# next step
cnGeCdSample <- c("GeneID", "GeneSymbol", cnGeCdSample)

# keep only rows of clinical data that belong to the samples that have data
# in all three columns, plus the columsn GeneID and GeneSymbol.
cd <- subset(cd, PCA.ID %in% cnGeCdSample)
# keep only the columns of those samples that are shared
cn <- subset(cn, select= names(cn) %in% cnGeCdSample ) ge <- subset(ge,
select= names(ge) %in% cnGeCdSample )

# set gene of interest
goi <- "PTEN"

# get the cn data for goi
cnGoi <- subset(cn, GeneSymbol==goi, select=grep("Gene",names(cn),
invert=TRUE ))

# cn samples of interest, where the gene of interest has the aberration of
# interest (PTEN - loss => the cut is <0)
cnSoi <- names(cnGoi)[cnGoi<0]

# get the ge data for goi
geGoi <- subset(ge, GeneSymbol==goi, select=grep("Gene",names(ge),
invert=TRUE ))

# ge samples of interest, the cut is <= -2
geSoi <- names(geGoi)[geGoi<=-2]

# un-comment the option that you are interested in below. For PTEN I am
# using the last one to get more samples for the Kaplan Meier graph.
# 
# sample of interest is that which came up in ge as well as in cn data soi
# <- cnSoi[cnSoi %in% geSoi]
# 
# if you only want to run this on gene expression data un-comment the next
# line comment three lines above soi <- geSoi
# 
# of if you only care about copy number results un-comment soi <- cnSoi
# 
# if it has to just turn up in one or the other
soi <- unique(geSoi, cnSoi)


#########        Run Kaplan-Meyer analysis #############
######### 
######### 
cdSoi <- rep("others", length(cd[[1]])) cdSoi[cd$PCA.ID %in% soi] <-
"samples of interest" cdSoi <- factor(cdSoi)

pFit <- survfit(Surv(BCR_FreeTime, BCR_Event) ~ cdSoi, data = cd)
plot(pFit, col = c("green", "purple"), main = goi) legend("topright",
levels(cdSoi), lty = 1, col = c("green", "purple"))

#########        Run Log-rank test #############
######### 
survdiff(Surv(BCR_FreeTime, BCR_Event) ~ cdSoi, data = cd)

#define a custom function to pull the p-value out of the Log-rank test
#
pValue<-getPval(survdiff(Surv(BCR_FreeTime, BCR_Event) ~ cdSoi, data = cd))
#add p-value on the plot
legend("bottomright", paste("p-value=", pValue), col = "black")

#########	Exercise on your own #############
# plot the survival of tumours that have over-expression of at least one of
# the neuroendocrine markers CHGA, CHGB or SYP.
#Tip: modify the above code to use only expression data for multiple genes
#instead of multiple data sets for a single gene (as with PTEN). 
# Over-expression cut-off z-score >=2.
# 
# 
