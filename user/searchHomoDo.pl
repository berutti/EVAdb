#!/usr/bin/perl 

########################################################################
# Tim M Strom   Oct 2013
########################################################################

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

$snv->showMenu('searchHomozygosity');
print "<span class=\"big\">Search results</span><br><br>" ;

$snv->searchResultsHomozygosity($dbh,$ref);

$dbh->disconnect;

$snv->printFooter();