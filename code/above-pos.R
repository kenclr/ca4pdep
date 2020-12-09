# Locate the initial table to be analyzed 
setwd("C:/Research/CorrAnal/data/")
tab <- read.table("cpa-above-pos.csv", header=TRUE,sep=",", row.names=1, check.names=TRUE)
tab # print out the part-of-speech table

# Open the package being used for the correspondence analysis (CA)
#   Execute CA into output, using the default options, including
#   the CA factor map plot
library(FactoMineR)
res <- CA(tab)

# Summarize the results, showing the chi-square, the eigenvalues
#   (including the variances for each dimension), the inertias for
#   row and columns
summary(res)

#res.hcpc <- HCPC (res, cluster.CA="rows", min=3 )
