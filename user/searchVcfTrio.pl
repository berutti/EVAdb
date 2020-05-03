#!/usr/bin/perl

########################################################################
# Tim M Strom   February 2007
########################################################################

use strict;
#use lib "/srv/www/cgi-bin/mysql/test";
use Snv;

my $snv         = new Snv;
my $cgi         = new CGI;
my $name        = $cgi->param('name');

$snv->printHeader();
my ($dbh) = $snv->loadSessionId();

$name       = $snv->htmlencode($name);
my $search      = $snv->initSearchVcfTrio($name,$dbh);
	
$snv->showMenu("searchVcfTrio");
print "<span class=\"big\">Search</span><br><br>" ;

print "<form action=\"searchVcfTrioDo.pl\" method=\"post\">" ;

$snv->drawMask($search);

print "</form>" ;

$snv->printFooter();