# ca4pdep
Preposition Feature Analysis Using Correspondence Analysis

This project explores methods that can analyze features created in parsing the sentences (instances) used in the Pattern Dictionary of English Prepositions (PDEP). This project will focus on the use of the techniques of correspondence analysis (CA) to examine the similarities between preposition senses.

This project will primarily use the R correspondence analysis packages "ca" and "FactoMineR".

```r
setwd("C:/Research/CorrAnal/data/")
# funding, benthos, author
fund <- read.table("funding.csv", header=TRUE,sep=",", row.names=1, check.names=FALSE)

require(ca)
f<-ca(fund)
sum(f$rowinertia) # 0.08287878 (the total inertia)
sum(f$rowinertia)*sum(fund) # 65.97151 (the chi-square)

```