#!/usr/bin/perl

use warnings;
use strict;

$/="\>";<>;
while (<>){
	chomp;
	my ($head,$seq)=split("\n",$_,2);
	$seq=~s/\n//g; $seq=~s/\s+//g;$head=~s/\s+//g;$head=~s/\n//g;
	my @gc=$seq=~/[GCgc]/g;
	my $gc=scalar@gc;
	my $len=length($seq);
	$gc=100*$gc/$len;
	print"$head\tGC\t$gc\%\n";
}
