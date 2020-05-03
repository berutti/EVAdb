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

$solexa->showMenu("listuser");
print "<span class=\"big\">Users</span><br><br>" ;

$solexa->listUser($dbh);

print "</form>" ;

$solexa->printFooter();