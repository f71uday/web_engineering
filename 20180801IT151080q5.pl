#start

local ($buffer, @pairs, $pair, $name, $value, %FORM,$t);
# Read in text
$ENV{'REQUEST_METHOD'} =~ tr/a-z/A-Z/;
if ($ENV{'REQUEST_METHOD'} eq "GET") {
   $buffer = $ENV{'QUERY_STRING'};
}
# Split information into name/value pairs
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
   ($name, $value) = split(/=/, $pair);
   $value =~ tr/+/ /;
   $value =~ s/%(..)/pack("C", hex($1))/eg;
   $FORM{$name} = $value;
}
$t = localtime();
$first_name = $FORM{first_name};
$last_name  = $FORM{last_name};
$dept = $FORM{dept};
$dob = $FPRM{dob};
$str = $first_name;


 

print "Content-type:text/html\r\n\r\n";
print "<html>";
print "<head>";
print "<title>CGI testing</title>";
print "</head>";
print "<body>";

print "<h1>Welcome $first_name your sign up was sucessfull</h1>";



print "</body>";
print "</html>";

1;
my $filename = 'data_151080.txt';
 
open(FH, '>', $filename) or die $!;

print FH $str.' '.$last_name;
 
close(FH);