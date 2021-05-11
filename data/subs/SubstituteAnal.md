# Data for Identifying Substitutable Prepositions

## Status of Substitutions
PDEP contains a field **Substitutable Prepositions** for each sense. The status of this field for the senses has been extracted for further analysis.

- **sense-subs.csv**: This files was generated from the PDEP MySQL database with _select prep, sense, opreps from prepprops_. This file consists of a line for each sense in PDEP, consisting of the preposition name, the PDEP sense number, and the value in the Substitutable Prepositions field (_opreps_).

- **prepcnts.csv**: This file was generated from the PDEP MySQL database with _select prep, count(*) from prepdefs group by prep_. This file consists of the number of senses for each preposition.

## Supporting Data
The file GraphViz.zip contains 21 *.dot files that can be applied to the GraphViz dot.exe executable that will generate (di)graphs. These files are simply text files that can be searched with regular expressions to identify the location of the PDEP senses in the definitional hierarchy. The file **all.dot** contains all senses; the other 20 files provide the senses in the **Class** field (and thus with smaller images).
