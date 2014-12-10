#!/usr/bin/perl
use strict;
use warnings;

my @love;

$/="\>";<>;
while (<>){
	chomp;
	my ($head,$seq)=split("\n",$_,2);
	$seq=~s/\n//g; $seq=~s/\s+//g;$head=~s/\s+//g;
	my $len=length($seq);
	my @love= split //, $seq;
		my $num=0;
		for (my $i=0; $i<$len;$i=$i+3) {
			if ($love[$i]=~/G|C/ig) {
				$num=$num+1;
			}
		}
my $GC1=300*$num/$len;
print "$head\tGC1\t$GC1\%\n";
}
