# ================================================== #
# Canadian Bioinformatics Workshops Series           #
# Toronto, May 21 and 22 2015                        #
# Exploratory Analysis of Biological Data using R    #
#                                                    #
# Faculty:                                           #
#   Boris Steipe <boris.steipe@utoronto.ca>          #
#                                                    #
# Some prior contributions by:                       #
#   Raphael Gottardo, FHCRC                          #
#   Sohrab Shah, UBC                                 #
#                                                    #
#                                                    #
# Module 3: Dimension reduction                      #
#                                                    #
# ================================================== #






# =============================================
# PCA introduction
# =============================================

# Synthetic data example
# 500 normally distributed samples each: uncorrelated
set.seed(2707)
x1 <- rnorm(500,0,1)
y1 <- rnorm(500,0,1)

# generate y2 corrleated with (dependent on) x1
y2 <- 2*x1 + y1
y2 <- y2-mean(y2)
y2 <- y2 / sd(y2)

# Create a lattice plot with two rows and two columns
oPar <- par(mfrow = c(2,2)) # set new and save old graphics state
par(mfrow = c(2,2))
# four plots ...
hist(x1)
hist(y2)
plot(x1, y1)
plot(x1, y2)
par(oPar) # restore graphics state parameters


# calculate a PCA of x1 and y2
pcaSample <- prcomp(cbind(x1,y2))

# here are the information items from the returned list of results
pcaSample
pcaSample$sdev
pcaSample$rotation
summary(pcaSample)
head(pcaSample$x)

# Compare the histograms before and after the rotation:
oPar <- par(mfrow = c(2,2))
hist(x1, xlim=c(-4,4), ylim=c(0,150), main="")
hist(y2, xlim=c(-4,4), ylim=c(0,150), main="")
hist(pcaSample$x[,1], xlim=c(-4,4), ylim=c(0,150), 
	main="", col=rgb(0.86,0,0,0.5))
hist(pcaSample$x[,2], xlim=c(-4,4), ylim=c(0,150), 
	main="", col=rgb(0.31, 0.5, 0.74, 0.5))
par(oPar) # restore graphics state parameters

# Plot the sample along the Principal Components as axes
plot(pcaSample$x[,1],pcaSample$x[,2], xlim=c(-4,4), ylim=c(-4,4))

# ==================================================
# EDA with PCA
# The relative importance of PCs
# ==================================================

# load one of the sample data sets in the R distribution

library(MASS)
data(crabs)

head(crabs)
# Two types: blue and orange
# Two genders: female and male
# FL frontal lobe size (mm)
# RW rear width (mm)
# CL carapace length (mm)
# CW carapace width (mm)
# BD body depth (mm)

# annotate...
fac <- as.factor(paste(crabs[, 1], crabs[, 2],sep="."))
head(fac)
c(fac[1], fac[51], fac[101], fac[151])
as.numeric(c(fac[1], fac[51], fac[101], fac[151]))

plot(crabs[, 4:8], pch=as.numeric(fac))
plot(crabs[, 4:5], pch=as.numeric(fac))
plot(crabs[, 5:6], pch=as.numeric(fac))

# Apply principal components analysis to the five measured dimensions
head(crabs)
pcaCrabs <- prcomp(crabs[, 4:8])

plot(pcaCrabs)
summary(pcaCrabs)
str(pcaCrabs)

# Plot projections along the components into a scatterplot.
# Axes for points are scaled as values, for vectors as variance
# Default for biplot() is the first and second component.

biplot(pcaCrabs, xlabs=as.numeric(fac))
legend(81, -63,c("1: B.F", "2: B.M", "3: O.F", "4: O.M"), box.col=1, bg="lightgrey")

# Plot the first against the third principal component
biplot(pcaCrabs, xlabs=as.numeric(fac), choices = c(1, 3))
legend(84, -63, c("1: B.F", "2: B.M", "3: O.F", "4: O.M"), box.col=1, bg="lightgrey")

# Plot the second against the third principal component
biplot(pcaCrabs, xlabs=as.numeric(fac), choices = c(2, 3))
legend(-14.8, 16.2, c("1: B.F", "2: B.M", "3: O.F", "4: O.M"), box.col=1, bg="lightgrey")

# ===================================================
# Task: plot the last plot (without vectors) with plotting
# symbols that correspond to the gender and type of crab:
# orange and blue circles for females and triangles for males.

# Advanced: also make symbol-size depend on carapace length or
# the mean of all five measurements.
# ===================================================


# My solution.
# 1. Create only the plotting frame
plot(pcaCrabs$x[,2], pcaCrabs$x[,3], type = "n")
crabPoints <- function(n) {
	if (crabs[n,"sp"] == "B") { 
		sp = "#0066FF"
	} else {
		sp = "#FF9900"
	}
	if (crabs[n,"sex"] == "M") { 
		sex = 24  # triangle
	} else {
		sex = 21  # circle
	}
	points(pcaCrabs$x[n,2],
	       pcaCrabs$x[n,3],
	       col = sp, bg = sp,
	       pch = sex)
}

for (i in 1:nrow(crabs)) {
	crabPoints(i)
}



# ==================================================
# EDA with PCA
# Exploring the structure of datasets
# ==================================================

# Load the Raymond Cho dataset of expression profiles
# containing 237 genes known or suspected to be involved
# in cell-cycle regulation.

cho.data <- read.table("CBW/logcho_237_4class.txt", skip=1)[, 3:19]
nrow(cho.data)
head(cho.data)

# compare the general trends of the measurements
boxplot(cho.data)


# use apply() to normalize the data
# Explain the parameters
cho.mean <- apply(cho.data, 1, "mean")
cho.sd <- apply(cho.data, 1, "sd")

# Explain the normalization
cho.data.std <- (cho.data-cho.mean)/cho.sd

# Revisit: is this actually correct? compare the boxplots!
# What are we normalizing here and why?




boxplot(cho.data.std)

# Change the column names
names(cho.data.std) <- paste("t", 1:17, sep="")
head(cho.data.std)

pcaCho <- prcomp(cho.data.std)
plot(pcaCho, n=17)

# Compare the PCs to PCs from a matrix of random numbers
# ... eg as follows:
rU = matrix(runif(17 * 237,0,3), nrow = 237, ncol=17)
plot(prcomp(rU), n=17, ylim = c(0, 3))

# Exercise: compare the PCs to a matrix of permuted
# observations.

# Explore the correlations along the first few principal components

oPar <- par(mfrow = c(2,2))
biplot(pcaCho)
biplot(pcaCho, choices = c(1, 3))
biplot(pcaCho, choices = c(2, 3))
biplot(pcaCho, choices = c(3, 4))
par(oPar)


# Examine the actual principal components in a paralell-coordinates
# plot for the seventeen dimensions. In microarray analysis we call
# these the "eigengenes", with reference to the "eigenvalues" of 
# linear algebra.
matplot(pcaCho$rotation[, 1:3],
        type="b", lwd=3,
        ylab="PCs")
        
legend(14, 0.6, 
       c("PC1", "PC2", "PC3"),
       bg="lightgrey",
       col=1:3, lty=1:3, lwd=2,
       pch=as.character(1:3))


# ====================
# ... select your own

# label with gene names
cho.genes <- as.character(read.table("logcho_237_4class.txt", skip=1)[, 1])
head(cho.genes)


biplot(pcaCho, choices = c(1, 2), cex=0.5)
# biplot(pcaCho, choices = c(1, 2), xlim=c(0,0.1), ylim=c(-0.1,0.1))
sel <- c(83, 41,19,125,227,216)

matplot(t(cho.data.std[sel, ]), 
        type="b", lwd=3, col="3",
        ylab="Clustered genes",
        xlab = "Timepoints",
        ylim = c(-2, 3))


# ====================

# Choose a few gene indices from similar sets of genes and
# visualize in a paralell coordinates plot

Sel1 <- c(73, 235, 83, 216)
Sel2 <- c(86, 148, 72, 104)


matplot(t(cho.data.std[Sel1, ]), 
        type="b", lwd=3, col="1",
        ylab="Clustered genes",
        xlab = "Timepoints",
        ylim = c(-2, 3))

oPar <- par(new=TRUE)
matplot(t(cho.data.std[Sel2, ]),
        type="b", lwd=3, col="2",
        ylab="",
        xlab="",
        ylim = c(-2, 3))
par(oPar)


# ==================================================
# Exploring the structure of datasets
# relative to preconceived models
# ==================================================

# PCA will show us what is actually found in our data. However we might
# already have some a priori ideas of what might be interesting. If we
# can cast these ideas in a model, we can simply calculate correlation
# coefficients between observation and model and project the data along
# these dimensions.

# PCA is a projection of the data under a high-dimensional
# rotation. This model-based analysis can be seen as a 
# projection along a particular model.

# Here we define three simple models: 
# a half-sine, one sine wave and two sine waves over the course of
# the experiment.


Nval <- 17

ProfHalf <- 1:Nval
ProfFull <- 1:Nval
ProfTwo  <- 1:Nval

ProfHalf <- sin((ProfHalf-1) * (pi / (Nval-1)))
ProfFull <- sin((ProfFull-1) * ((2 * pi) / (Nval-1)))
ProfTwo  <- sin((ProfTwo-1) * ((4 * pi) / (Nval-1)))

plot(ProfHalf, type="l", 
   xlim = c(1, Nval), 
   ylim = c(-2, 2), col="2")
lines(ProfFull, type="l",
   xlim = c(1, Nval), 
   ylim = c(-2, 2))
lines(ProfTwo, type="l",
   xlim = c(1, Nval), 
   ylim = c(-2, 2), col="3")

# plotting the correlation of each datapoint against our two models
n <- dim(cho.data.std)[1]
CorHalf <- rep(0, n)
CorFull <- rep(0, n)
CorTwo <- rep(0, n)

for (i in 1:n) {
  x <- c(t(cho.data.std[i, ]))
  CorHalf[i] <- cor(x, ProfHalf)
  CorFull[i]  <- cor(x, ProfFull)
  CorTwo[i]  <- cor(x, ProfTwo)
}


plot(CorHalf, CorFull, type="n")
text(CorHalf, CorFull)

plot(CorTwo, CorFull, type="n")
text(CorTwo, CorFull)

plot(CorTwo, CorFull, type="n", xlim=c(0.1, 0.3), ylim=c(-0.1, -0.4))
text(CorTwo, CorFull)



# Select indices from the plot and plot paralell coordinates
# of the actual values.

Sel1 <- c(19, 131, 54, 146, 189)
Sel2 <- c(201, 194, 195, 106)
Sel3 <- c(142, 3, 173, 101)

oPar <- par(mfrow = c(3,1), mar=c(1,1,1,1)) # reduce margin sizes
matplot(t(cho.data.std[Sel1, ]), type="b", lwd=3,
   ylab="Similar genes", 
   xlab = "Timepoints", 
   ylim = c(-2, 2), 
   col="2")
matplot(t(cho.data.std[Sel2, ]), type="b", lwd=3, 
   ylab="", 
   xlab="", 
   ylim = c(-2, 2), 
   col="1")
matplot(t(cho.data.std[Sel3, ]), type="b", lwd=3, 
   ylab="",
   xlab="",
   ylim = c(-2, 2),
   col="4")
par(oPar)



# ============================================================
# t-SNE
# ============================================================
# t-Stochastic Neighbour Embedding is a powerful dimension re-
# duction algorithm developed in the lab of Geoff Hinton at UofT.
# Its implementation for flow cytometry - viSNE -is available
# from the Dana Pe'er lab (as Matlab code). 
# http://www.c2b2.columbia.edu/danapeerlab/html/cyt.html
# It is the basis for a very powerful flow-cytometry exploration tool:
# Amir et al. (2013) Nature Biotechnology, doi:10.1038/nbt.2594
#
# Below we will try the t-SNE algorithm for exploration of  
# some of the data we have looked at before.

if (!require(tsne, quietly=TRUE)) {
  install.packages("tsne")
  library(tsne)
}
?tsne

# Apply tsne to crabs data
# set up a plotting routine
ecb <- function(x){ 
	plot(x,t='n');
	points(x, pch=crabs.pch, bg=crabs.col, cex=crabs.c)
	}

set.seed(112358)
tsne_crabs <- tsne(crabs[,4:8], epoch_callback = ecb, perplexity=50)


# Apply tsne to the cell-cycle data
                            
sel <- which(CorTwo > 0.8) # Pick a subset, as above. We will track whether
sel                        # the subset is cohesive during the iterations.

                            
matplot(t(cho.data.std[sel, ]), type="b", lwd=3, 
   ylab="Normalized expression (AU)",
   xlab="timepoint",
   ylim = c(-3, 3),
   col="#808080")
   
ecb <- function(x){ 
	plot(x,t='n');
	points(x[sel,], bg="firebrick", pch=21, cex=2)
	text(x, labels=paste(1:dim(cho.data.std)[1]), cex=0.5)
	}
	
set.seed(112359)
tsne_cho <- tsne(cho.data.std[,1:17], epoch_callback = ecb, perplexity=50)

# Pick a cluster of genes in the vicinity of the originally
# selected values

sel2 <- c(41, 4, 125, 233, 192, 44, 147)
matplot(t(cho.data.std[sel, ]), type="b", lwd=3, 
   ylab="Normalized expression (AU)",
   xlab="timepoint",
   ylim = c(-3, 3),
   col="#808080")
for (i in 1:length(sel2)) {
	lines(t(cho.data.std[sel2[i], ]), type="l", lwd=3, col="firebrick")
}

# Add: where are these genes on the model-correlation plot?



# Exercise: plot the position of a two-cycle sine function, its inverse,
# a two-cycle cosine function and its inverse on the SNE map.
# Are there genes in the vicinity? Are these related to the ones you found
# earlier when projecting along models?


# [end]
