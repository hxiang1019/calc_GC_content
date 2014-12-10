#!/usr/bin/perl 

$/="\>";<>;
while (<>){
my $num=0;
my $sum=0;
my @love;
my @base;
my @codon;
	chomp;
	my ($head,$seq)=split("\n",$_,2);
	$seq=~s/\n//g; $seq=~s/\s+//g;$head=~s/\s+//g;
	my $len=length($seq);	
	@love= split //, $seq;
		for (my $i=0; $i<$len;$i=$i+3) {
		push @codon, $love[$i].$love[$i+1].$love[$i+2]; 
			}
foreach $codon (@codon){
	if (!($codon=~/ATG|TGG|TAA|TAG|TGA|ATT|ATC|ATA/ig)){
	@base= split //, $codon;
		if ($base[2]=~/G|C/ig) {
		$num=$num+1;
			}
		$length=length($codon);
		$sum=$length+$sum;
		}
	}
print "$num\t$sum\n";
my $GC=300*$num/$sum;
print "$head\tP3\t$GC\%\n";
}


