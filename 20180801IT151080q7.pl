use strict;
use warnings;

my $file = 'demo.txt';
	open my $info, $file or die "Could not open $file: $!";
	my $counter=1;
	while( my $line = <$info>)  {   
	    	print "\n";
		print $counter;
		print $line;
		  
	    $counter = $counter+1;
	}
close $info;
