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
	if (!($codon=~/ATG|TGG/ig)){
	@base= split //, $codon;
		if ($base[0]=~/G|C/ig) {
		$num=$num+1;
			}
		$length=length($codon);
		$sum=$length+$sum;
		}
	}
my $GC=300*$num/$sum;
print "$head\tP1\t$GC\%\n";
}


