# To perform various array operation using perl
#To perform various unshift operation using perl
#!/user/bin/perl-w
@bases=('A','C','G','T');
$base1=pop@bases;
$base2=shift@bases;
unshift(@bases,$base1,$base2);
print "here is the element from the end put on the begining:";
print "@bases\n\n";
print "...................";
print"\n\n";
exit;



