# Sanger_ab1-fastq
__`ab1-fastq.pl`__ for reading ABI Sanger sequencing trace file, and simulating the primarySeq and secondarySeq to fastq reads by extracting 90 bp blocks from Sanger sequence and shifting 1-bp in turns. As an example, a 200 bp Sanger sequence would obtain 110 fastq reads within the length of 90 bp.</br></br>

## Dependencies
__`ab1-fastq.pl`__ is from __`CandiHap`__: https://github.com/xukaili/CandiHap</br>
__`perl 5`__, __`R ≥ 3.2`__ (with sangerseqR). </br>

install __`sangerseqR`__ packages in R:</br>
```
if (! requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
if (! require("sangerseqR")) BiocManager::install("sangerseqR")
```

## Getting started
Put __`sanger_CandiHap.sh`__, __`Gene_VCF2haplotypes.pl`__, __`ab1-fastq.pl`__ and all __`sanger_teat_data`__ files in a same dir, then run:</br>
```
     perl  ab1-fastq.pl  Sanger.ab1
e.g. perl  ab1-fastq.pl  example.ab1
```
