#!/usr/bin/perl
# check if the module dancer2 is installed
# if not, install it
use strict;
use warnings;
use Module::Load;
my $module = 'Dancer2';
load $module;
use Dancer2 appname => 'app';
# Define the route for GET request
get '/hello' => sub {
    return "Hello, World!";
};

# configure the port
set port => 3000;
# start the app
start;
# how to run this script
# perl app.pl
# open a browser and go to http://localhost:3000/hello
# you should see the message "Hello, World!" in the browser
#how to end the app
# ctrl + c
# info about dancer2
# https://metacpan.org/pod/Dancer2
# https://metacpan.org/pod/Dancer2::Cookbook
# https://metacpan.org/pod/Dancer2::Manual
# https://metacpan.org/pod/Dancer2::Tutorial
# how to install dancer2
# cpanm Dancer2
# or
# cpan Dancer2
# or
# perl -MCPAN -e 'install Dancer2'
# for more info for installing modules
# https://www.cpan.org/modules/INSTALL.html
# happy coding

