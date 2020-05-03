#!/usr/bin/perl 

########################################################################
# Tim M Strom   May 2008
########################################################################

use strict;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use Solexa;

my $solexa     = new Solexa;
my $cgiquery    = new CGI;

$solexa->printHeader();
my $dbh=$solexa->loadSessionId();

$solexa->showMenu("listkit");
print "<span class=\"big\">Kits</span><br><br>" ;

$solexa->listKit($dbh);

print "</form>" ;

$solexa->printFooter();