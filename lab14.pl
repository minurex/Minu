#!/user/bin/perl
#A program with a subroutine to append ACGT to DNA
#The original DNA
$DNA= 'CGACGTCTTCTCAGGCGA';
#The call to the subroutine "addACGT"
#The argument being passed in  is $DNA; the result is saved in $longer_dna
$longer_dna= addACGT($DNA);
print"I added ACGT to $DNA and got $longer_dna\n\n";
exit;
#Here is the definition for subrouine "addACGT"
sub addACGT {
my($dna)= @_;
$dna.='ACGT';
return $dna;
}

