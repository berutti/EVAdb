#!/usr/bin/perl 

########################################################################
# Tim M Strom   February 2007
########################################################################
#obsolet

use strict;
#use lib '/srv/www/cgi-bin/mysql/test';
use Snv;

my $cgi          = new CGI;
my $ref          = $cgi->Vars;
my $snv          = new Snv;

########################################################################
# main
########################################################################

$snv->printHeader();
my ($dbh) = $snv->loadSessionId();

$ref = $snv->htmlencodehash($ref);

$snv->showMenu("liststat");
print "<span class=\"big\">Search results</span><br><br>" ;

$snv->listStat($dbh,$ref);

$dbh->disconnect;

$snv->printFooter();