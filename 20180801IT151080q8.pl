

use strict;
use warnings;

# the file name of your .csv file
my $file = 'demo.txt';


# open the file for reading
open(FILE, "<$file") or
 die("Could not open log file. $!\n");

 #process line by line:
while(<FILE>) {

 my($line) = $_;

 # remove any trail space (the newline)
 # not necessary, but again, good habit
 chomp($line);


my @result = grep (/uday/, $line);
print @result; 
}



