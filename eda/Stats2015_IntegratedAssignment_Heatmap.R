library(io);
library(CCLE);

# load ccleCgc data from the CCLE package
data(ccleCgc);

# parameterized heatmap plotting function
my.heatmap <- function(x,
	clim=c("green", "white", "red"), cbreaks=18, col=NULL,
	zlim=c(-3, 3), margins=c(6, 10),
	cexRow=1.5, cexCol=1.5,
	scale="none", Rowv=NA, Colv=NA, ...
) {
	if (is.null(col)) {
		col <- colorRampPalette(clim)(cbreaks);
	}
	heatmap(x, col=col, zlim=zlim, margins=margins,
		cexRow=cexRow, cexCol=cexCol, scale="none", Rowv=Rowv, Colv=Colv, ...);
}

# subset of samples and genes to plot
samples <- c(3, 5, 7, 8, 9, 13:16, 18, 21, 24, 26, 27, 28, 29);
genes <- intersect(colnames(expr), colnames(mut));

# preprocessed data
expr.z <- scale(as.matrix(expr));
cn.z <- scale(as.matrix(cn));
mut.z <- sapply(mut, as.numeric);
rownames(mut.z) <- rownames(mut);
ec50.z <- log10(as.matrix(pharm$ec50));

# plot various data types

qdraw(
	my.heatmap(expr.z[samples, genes], clim=c("green3", "white", "firebrick2")),
	file = "ccle_expr.png"
);

qdraw(
	my.heatmap(cn.z[samples, genes], clim=c("royalblue2", "white", "orange")),
	file = "ccle_cn.png"
);

qdraw(
	my.heatmap(mut.z[samples, genes],
		col=c("#999999", "#E41A1C", "#377EB8", "#4DAF4A", "#984EA3", "#FF7F00"),
		zlim=c(1, 6)),
	file = "ccle_mut.png"
);

qdraw(
	my.heatmap(ec50.z[samples, ], clim=c("red", "white"),
		zlim=log10(c(0.0025, 8))),
	file = "ccle_ec50.png"
);

