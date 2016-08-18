### CBW MICROARRAY AWESOME ANALYSIS #######################
# first things first, let R know where our data is
setwd('C:/Users/pboutros/Desktop/CBW/raw/');

# verify this works
dir();

# next let us load the data into R
# we do using the affy library
library(affy);
# this should come up with a significant amount of text

# next we should read the data in
raw.data <- ReadAffy(
	filenames = character(0)
	);

# normalize the data using RMA via expresso
norm.data.rma <- expresso(
	afbatch = raw.data,
	bgcorrect.method = 'rma',
	normalize.method = 'quantiles',
	pmcorrect.method = 'pmonly',
	summary.method = 'medianpolish'
	);

# now read the data in, but using the alternative CDF
raw.data.alt <- ReadAffy(
	filenames = character(0),
	cdfname = 'hgu95av2hsentrezgcdf'
	);

# normalize the alternative CDF data using RMA via expresso
norm.data.rma.alt <- expresso(
	afbatch = raw.data.alt,
	bgcorrect.method = 'rma',
	normalize.method = 'quantiles',
	pmcorrect.method = 'pmonly',
	summary.method = 'medianpolish'
	);

# verify that this has a different number of genes
norm.data.rma.alt;

# lastly, a quick hint on visualization!
plotDensity(exprs(norm.data.rma.alt));
