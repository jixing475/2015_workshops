# ==============================================================================
# Exploratory Analysis of Biological Data using R, 2015
# Integrated Assignment Part 2 Answers
#
# @Authors:  David JH Shih <djh.shih@gmail.com>
#            Catalina Anghel <catalina.anghel@oicr.on.ca>
# @License:  GNU General Public License v3 
# @Created:  2015-05-11
#
# @Input:    Data from the Cancer Cell Line Encyclopedia (CCLE)
#            Downloaded from: http://www.broadinstitute.org/ccle
#            Associated publication:
#
#            Barretina et al. The Cancer Cell Line Encylopedia enables
#            predictive modelling of anticancer drug sensitivity.
#            Nature 483, 603-607 (2012).
#
# @Output:   Statistics, Plots


# ==============================================================================
# PREAMBLE
#

library(CCLE);
data(ccleCgc);


# ==============================================================================
# SECTION 8  Explore the gene expression again
# 

# 8a  Compute the correlation coefficient between the expression values of
#     RUNX1 and JUN using cor().
cor(expr[,"RUNX1"], expr[,"JUN"]);

# The expressions of RUNX1 and JUN are not very correlated.
# Let's automate the procedure to test correlations between RUNX1 and
# other genes to find better candidates.

# 8b  Write a function correlateTwoGenes(gene1, gene2, expressionMatrix)
#     to find the correlation between two given genes in our dataset. 
#     The function has three parameters: gene1, gene2, expressionMatrix.
#     The code in the function needs to extract gene-specific expressions
#     from the matrix and compute their correlation.
#     The output of the function is the Pearson correlation coefficient of
#     the expression values of the two genes. 
# Example:  correlateTwoGenes("RUNX1", "TP53", expr) should give: 0.07595393
correlateTwoGenes <- function(gene1, gene2, expressionMatrix) {
  values1 <- expressionMatrix[,gene1];
  values2 <- expressionMatrix[,gene2];
  cor(values1, values2)
}

# You will now build a FOR-loop as shown in the lecture notes to correlate 
# RUNX1 expression values to expression of other genes.

# 8c  Which genes do you want to correlate with RUNX1?
#          Assign that to a vector called testedGenes. 
testedGenes <- colnames(expr);

# 8d  How many genes do we have?
#     Store this value in the variable called numberOfGenes.
numberOfGenes <- length(testedGenes);

# 8e  Create an vector of zeroes to store correlation results (corResults).
#     The vector should contain one element for every gene tested. 
corResults <- rep(0, length(testedGenes));

# 8f  Create a loop that calls the function correlateTwoGenes
#     consecutively on all genes in the matrix. 
#     The first argument gene1 of correlateTwoGenes is always "RUNX1",
#     but the second argument gene2 is given by the for-loop from the
#     vector testedGenes. The third argument of the function is always the
#     expression matrix (expr). 
#     Assign the computed correlation coefficient to the corresponding 
#     value in the corResults vector. 
#     The for-loop should iterate from 1 to numberOfGenes. 
for (i in 1:numberOfGenes) {
  corResults[i] <- correlateTwoGenes("RUNX1", testedGenes[i], expr);
}

# 8g  Select the genes that have a moderate positive correlation with 
#     RUNX1 (correlation of 0.3 more). 
testedGenes[corResults>=0.3];

# You should see six genes (TAL1, CCND3, CHCHD7, ETV6, LYL1, and RUNX1).
# One of the top correlated genes is ETV6, another transcription factor
# involved in development and cancer. RUNX1 and ETV6 are known to make up
# fusion proteins through chromosomal translocations, leading to leukemia.

# 8h  Investigate the correlation of RUNX1 and ETV6.
#     Plot their expression values as a scatterplot 
#     (i.e. expression of ETV6 vs. expression of RUNX1)
plot(expr[,"RUNX1"], expr[,"ETV6"]);

# 8i  Compute correlation p-value using cor.test().
#     What is the p-value of this association?
h <- cor.test(expr[,"RUNX1"], expr[,"ETV6"]);
h$p.value;
h$estimate;

# 8j  Create a linear regression model to predict ETV6 values
#     from RUNX1 values. 
# Note:  The arguments of plot(x, y) are reversed in lm(y ~ x). 
#        So RUNX1 and ETV6 should switch places.
etvModel <- lm(expr[,"ETV6"] ~ expr[,"RUNX1"]);

# 8k  Investigate the regression model using the summary() function.
#     Compare the gained p-value with the p-value from cor.test.
summary(etvModel);

# 8l  Add the linear regression line on the plot using a thick red line.
abline(etvModel, col="red", lwd=3);


# ==============================================================================
# SECTION 9  Explore the pharmacological profiles
# 

# 9a  Four response variables were measured (ic50, ec50, act.area, and act.max).
#     These data are contained with the `pharm` list.
#     Create scatter plots of each pair of response variables.
plot(log10(as.matrix(pharm$ic50)), as.matrix(pharm$act.max), pch=20);
plot(log10(as.matrix(pharm$ec50)), as.matrix(pharm$act.max), pch=20);
plot(log10(as.matrix(pharm$ec50)), as.matrix(pharm$act.area), pch=20);

# 9b  Can you see different clusters in the act.max vs ec50 plot?
#     What do each cluster represent?
# Hint:  Zoom into the region where most data points lie using xlim and ylim
plot(log10(as.matrix(pharm$ec50)), as.matrix(pharm$act.max),
     pch=20, xlim=c(-3, 1), ylim=c(-100, 0));

# 9c  Paclitaxel is a non-targeted anti-cancer agent, whereas PLX4720 is a 
#     targeted anti-cancer agent (kinase inhibitor designed to inhibit the
#     oncogene BRAF^V600E).
#     How do Paclitaxel and PLx4720 compare in terms of their activities 
#     across cell lines?
#     Plot a scatter plot for Paclitaxel. Do the same for PLX4720.
# Note:  The CCLE package provides a plot.drug.activity() function.
plot.drug.activity(pharm, "Paclitaxel");
plot.drug.activity(pharm, "PLX4720");

# 9d  Repeat for other drugs.
#     Panobinostat (HDAC inhibitor)
plot.drug.activity(pharm, "Panobinostat");
#     17-AAG (Antibiotic drug re-purposed for fighting cancer)
plot.drug.activity(pharm, "X17.AAG");
#     Nutlin-3 (Drug designed to restore wildtype p53 function)
plot.drug.activity(pharm, "Nutlin.3");
#     Erlotinib (Kinase inhibitor designed to inhibit EGFR)
plot.drug.activity(pharm, "Erlotinib");

# 9e  The PLX4720 drug is designed to inhibit the cancers harbouring 
#     mutant BRAF with the V600E substitution. Base on the pharmacological
#     profiles of different cell lines, does this drug appear effective
#     against its intended target?
# Hint:  Compare the response of cell lines with BRAF^V600E to those without.
#        Assign colours to each point based on BRAF^V600E mutation status.
plot.drug.activity(pharm, "PLX4720", group=mut$BRAF.V600E);
# Answer:  Cell lines with BRAF^V600E mutation are more susceptible to PLX4720.

# 9f  Are the chemotherapeutic agents, Paclitaxel, Irinotecan, and Topotecan,
#     universally effective against all cancer types?
plot.drug.activity(pharm, "Paclitaxel", group=pheno$site);
plot.drug.activity(pharm, "Irinotecan", group=pheno$site);
plot.drug.activity(pharm, "Topotecan", group=pheno$site);


# ==============================================================================
# SECTION 10  Create publication-quality plots 
# 

# Import the ggplot2 library
library(ggplot2);

# 10a  Create a data frame containing TP53 and MYC expression data
#      with each row representing one sample.
d <- expr[, c("TP53", "MYC")];

# 10b  Create an ggplot object and specify plot variables.
g <- ggplot(d, aes(x=TP53, y=MYC));

# 10c  Add plot type and theme specification to the ggplot object.
g <- g + geom_point() + theme_bw();

# 10d  Plot the object using print(). or io::qdraw().
print(g);

# Alternatively, we can save the plot to a file using qdraw() from the 
# io package, which will save files in the correct formats as specified by
# the file extensions in the file names. Additionally, qdraw() creates smaller
# drawing areas by default to ensure the labels are relatively larger.
# The dimensions of the plot can be easily set by changing the width and
# height parameters of qdraw().
library(io);
qdraw(g, file="myc-tp53.pdf");
qdraw(g, file="myc-tp53.png");

# 10e  Remake the plot and show the histotypes in different colours.
d <- cbind(expr[, c("TP53", "MYC")], histotype=pheno$histotype);
g <- ggplot(d, aes(x=TP53, y=MYC, colour=histotype)) + 
  geom_point() + theme_bw();
qdraw(g, width=9);

# 10f  Show the same plot but only for cancers of haematopoietic or
#      lymphoid origin
d <- cbind(expr[, c("TP53", "MYC")], pheno[, c("site", "histotype")]);
g <- ggplot(d[d$site == "haematopoietic_and_lymphoid_tissue", ],
            aes(x=TP53, y=MYC, colour=histotype)) + geom_point() + theme_bw();
qdraw(g, width=7);

# 10g  Visualize the expression data by PCA.
#      Apply PCA to the entire dataset.
#      Show only the cancer types breast, skin, lung, and liver.
expr.pr <- prcomp(expr);
d <- cbind(expr.pr$x, pheno[, c("site", "histotype")]);
g <- ggplot(d[d$site %in% c("breast", "skin", "lung", "liver"), ],
            aes(x=PC1, y=PC2, colour=site)) + geom_point() + theme_bw();
qdraw(g);

# 10h  Repeat the same PCA analysis with copy-number data.
cn.pr <- prcomp(cn);
d <- cbind(cn.pr$x, pheno[, c("site", "histotype")]);
g <- ggplot(d[d$site %in% c("breast", "skin", "lung", "liver"), ], 
            aes(x=PC1, y=PC2, colour=site)) + geom_point() + theme_bw();
qdraw(g);
