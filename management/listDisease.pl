#!/usr/bin/perl

########################################################################
# Tim M Strom   Oct 2010
########################################################################

use strict;
use CGI;
use CGI::Carp qw(fatalsToBrowser);
use Snvedit;
use DBI;

my $cgiquery     = new CGI;
my $ref          = $cgiquery->Vars;

my $snv          = new Snvedit;

########################################################################
# main
########################################################################

$snv ->printHeader();
my $dbh = $snv ->loadSessionId();

$snv ->showMenu("listDisease");
print "<span class=\"big\">Search results</span><br><br>" ;

$snv ->listDisease($dbh,$ref);

$dbh->disconnect;

$snv ->printFooter();