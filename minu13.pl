#!/user/bin/perl-w
#seaching for motif
print"please type the filename of thr protein sequence data:";
$proteinfilename =<STDIN>;

#Remove the newline from the protein filename;
chomp $proteinfilename;

#open the file
unless(open(PROTEINFILE,$proteinfilename)){
print"cannot open file\"$proteinflename\"\n\n";
exit;
}
#Read the protein sequence data from the file,and store it into the array variable @protein
@protein=<PROTEINFILE>;
#Close the file-we have read all the data into @protein now
close PROTEINFILE;
 
#put the protein sequence data into a single string,as it's easier to search for the motif in a string that in an array of lines(what if the motif occurs over a line break?)
 
$protein=join('',@protein);
#Remove whitespace
$protein=~s/\s//g;
do{
print"enter a motif to search for:";
$motif=<STDIN>;
#remove the newline at the enf of $motif
chomp $motif;
if($protein=~/$motif/)
{
print "i found it !\n\n";
}
else
{print "i couldn't finf it !\n\n";
}
#exit on an empty user input
}until($motif=~/^\s*$/);
#exit the program
exit;  

