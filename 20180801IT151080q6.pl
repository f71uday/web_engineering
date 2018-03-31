

    #!/usr/bin/perl
    
    open(FILE, "demo.txt") || die ("Error\n");
     
    $string = <FILE>;
     
    $string =~ s/[\n\r\s]+//g;
    print "$string";


