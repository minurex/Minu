#!/user/bin/perl
$proteinfile="LAB5.pep";
open(PROTEINFILE,$proteinfile);
$protein=<PROTEINFILE>;
print"1st line \n";
print $protein,"\n";
$protein=<PROTEINFILE>;
print"2nd line \n";
print $protein,"\n";
close PROTEINFILE;
exit;
