# Data for Identifying Substitutable Prepositions

## Status of Substitutions
PDEP contains a field **Substitutable Prepositions** for each sense. The status of this field for the senses has been extracted for further analysis.

- **prep-opreps.csv**: This file has been generated from SQL PDEP database with _select prep, sense, opreps from prepprops where opreps <> ""_. That is, this file consists of the preposition, the sense number, and the substitutable prepositions where this field is not empty.

- **prep-no-opreps.csv**: This file has been generated from SQL PDEP database with _select prep, sense, opreps from prepprops where opreps = ""_. That is, this file consists of the preposition and the sense number where this field is empty.

## Supporting Data
The file GraphViz.zip contains 21 *.dot files that can be applied to the GraphViz dot.exe executable that will generate (di)graphs. These files are simply text files that can be searched with regular expressions to identify the location of the PDEP senses in the definitional hierarchy. The file **all.dot** contains all senses; the other 20 files provide the senses in the **Class** field (and thus with smaller images).
