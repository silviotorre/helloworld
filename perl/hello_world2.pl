#!/usr/bin/perl
use strict;
use warnings;

# Using Perl's regular expression and substitution operator 's///'
# This would typically be used to find and replace text in a string
my $str = "Goodbye, Mars!";
$str =~ s/Goodbye, Mars/Hello, World/g;
# The above line finds 'Goodbye, Mars' in the string and replaces it with 'Hello, World'

# Now, let's just print it out in a convoluted way using map and split
# Split breaks a string into a list of characters
# Map applies a block of code (in this case, printing each character) to each element in a list
map { print "$_\n" } split //, $str;

# A more straightforward way to do the above would be simply 'print "$str\n";'
