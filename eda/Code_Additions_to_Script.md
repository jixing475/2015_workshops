Some code additions to the script, in case you missed them:

## Module 1 

This won't work as there was no first row labelled "Cd69"
"Cd69" was an entry in row 1, but the first row name is simply "1"

``` r
 mean(as.numeric(sup3["Cd69",2:15]))
```

Instead, returns a vector saying which entry in column 1 is "Cd69"
(All entries are FALSE, except first entry)

``` r
 sup3[,1]=="Cd69"
 mean(as.numeric(sup3[sup3[,1]=="Cd69",2:15]))
```

We can change row names to be the gene names

``` r
 rownames(sup3) <- sup3[,1]
```

Plotting more than one column with boxplot

``` r
 colnames(sup3)
 boxplot(sup3[, c("MF.ctrl", "MF.LPS")]) 
 hist(sup3[,"MF.ctrl"])
 boxplot(sup3[ ,2:4])
```

Histogram of CD3 values from the gvhd data

``` r
 hist(gvhd[,5], xlab="CD3 values")
 abline(v=280, col="red")
```
