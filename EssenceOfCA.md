# ca4pdep
Essence of Correspondence Analysis (CA)

Correspondence analysis examines a contingency table, a cross-tabulation of a set of individuals according to two categorical variables. In our case, we examine preposition senses (the rows of one variable) against features (the columns of the second variable). This example table below shows senses of the preposition _**above**_ and the parts of speech of the preposition complements for 229 sentences from the **C**orpus **P**reposition **A**nalysis corpus (CPA).

[Example contingency table](https://github.com/kenclr/ca4pdep/blob/main/feats-cpa-above.csv)

CPA 	cd 	dt 	jj 	nn 	nnp 	nnps 	nns 	pdt 	prp 	vbg 	wp
1(1) 	0 	0 	0 	23 	1 	0 	2 	0 	2 	1 	0

The table constitutes the **observed** frequency values. Expected values for the cells are then calculated. From this data, a chi-square is computed to assess the null hypothesis that there are no differences between the rows. In this case, the chi-square is 286.95 indicating that there are differences. The matrix of standardized residuals is then used to compute the singular value decomposition. Using the singular values (the eigenvalues), the correspondences can then be visualized and plotting, as in the below figure.

| ![Example](Rplot12.png)  |
|:---:|
| *Sense Similarities Based on CPA Corpus* |

The plot in the figure (a biplot) is based on quantitative distances between the senses and the parts of speech. This is only an example. A considerable amount of further analysis is available for interpreting the biplot.