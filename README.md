# Sanger_ab1-fastq: Convert Sanger ab1 file to fastq files.
__`ab1-fastq.pl`__ for reading ABI Sanger sequencing trace file, and simulating the primarySeq and secondarySeq to fastq reads by extracting 90 bp blocks from Sanger sequence and shifting 1-bp in turns. As an example, a 200 bp Sanger sequence would obtain 110 fastq reads within the length of 90 bp.</br></br>

## Dependencies
__`ab1-fastq.pl`__ is from __`CandiHap`__ Sanger_ab1: https://github.com/xukaili/CandiHap</br>
__`perl 5`__, __`R ≥ 3.2`__ (with sangerseqR). </br>

install __`sangerseqR`__ packages in R:</br>
```
if (! requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
if (! require("sangerseqR")) BiocManager::install("sangerseqR")
```

## Getting started
Put __`sanger_CandiHap.sh`__, __`Gene_VCF2haplotypes.pl`__, __`ab1-fastq.pl`__ and all __`sanger_teat_data`__ files in a same dir, then run:</br>
```
     perl  ab1-fastq.pl  Sanger.ab1       doi: https://doi.org/10.1101/2020.02.27.967539
e.g. perl  ab1-fastq.pl  example_F.ab1
```


## License
Academic users may download and use the application free of charge according to the accompanying license. Commercial users must obtain a commercial license from Xukai Li. If you have used the program to obtain results, please cite the following paper:</br>

> Xukai Li☯* (李旭凯), Zhiyong Shi☯ (石志勇), Qianru Qie (郄倩茹), Jianhua Gao (高建华), Yiwei Jiang (姜亦巍), Yuanhuai Han (韩渊怀) & Xingchun Wang* (王兴春). CandiHap: a haplotype analysis toolkit for natural variation study. bioRxiv 2020.02.27.967539.              doi: https://doi.org/10.1101/2020.02.27.967539</br>
> （☯ Equal contributors; * Correspondence）</br>
</br>
