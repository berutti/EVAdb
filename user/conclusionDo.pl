#!/usr/bin/perl 

########################################################################
# Tim M Strom   Sept 2010
########################################################################

use strict;
#use lib "/srv/www/cgi-bin/mysql/test";
use Snv;

my $cgi         = new CGI;
my $ref         = $cgi->Vars;
my $snv        	= new Snv;

########################################################################
# main
########################################################################

$snv->printHeader();
my ($dbh) = $snv->loadSessionId();

$ref = $snv->htmlencodehash($ref);

$snv->showMenu('');
print "<span class=\"big\">Conclusion inserted</span><br><br>" ;

$snv->insertIntoConclusion($ref,$dbh,'conclusion');

$dbh->disconnect;

$snv->printFooter();