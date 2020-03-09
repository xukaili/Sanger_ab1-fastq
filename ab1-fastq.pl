#!/usr/bin/perl
$ARGV[0] =~ /(.*)\.ab1/;
$name = $1;
open OUTR,">ab1-fastq.R" or die $!;
print OUTR <<EOF;
if (! requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
if (! require("sangerseqR")) BiocManager::install("sangerseqR")
seq = readsangerseq('$ARGV[0]')
bc = makeBaseCalls(seq, ratio = 0.33)
#chromatogram(bc, showcalls = 'both')
#primarySeq(bc, string = TRUE)
#secondarySeq(bc, string = TRUE)
lxk = merge(primarySeq(bc, string = TRUE), secondarySeq(bc, string = TRUE))
write.table(lxk, file = "$name.txt", sep = "", quote = FALSE,row.names = FALSE, col.names = FALSE)
EOF
system("Rscript ab1-fastq.R");

open OUT,">$name.fq" or die $!;
open SEQ ,"$name.txt" or die "$!";
while (<SEQ>) {
    $_ =~ s/\n*|\r*//g;
    my $q='J';
    for $i (10..length($_)-90) {
        #print "$i\n";
        print OUT "\@$name-$i\n", substr($_, $i, 90), "\n\+\n", $q x (90), "\n";
    }
}
system("rm -rf *.R");
system("rm -rf $name.txt");

