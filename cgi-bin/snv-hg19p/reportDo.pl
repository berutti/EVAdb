#!/usr/bin/perl 

########################################################################
# Tim M Strom   February 2007
########################################################################

use strict;
BEGIN {require './Snv.pm';}

my $cgi          = new CGI;
my $ref          = $cgi->Vars;
my $snv          = new Snv;

########################################################################
# main
########################################################################

$snv->printHeader();
my ($dbh) = $snv->loadSessionId();

#$ref = $snv->htmlencodehash($ref);

$snv->showMenu('report');
print "<span class=\"big\">Report</span><br><br>" ;

$snv->report($dbh,$ref);

$dbh->disconnect;

$snv->printFooter();
