#!perl -T

use strict;
use warnings;

use vars qw/@attempted @loaded/;

use Test::More tests => 5;

use lib 't';
use Best [ qw/A::Module AnAlternative LastChance/ ];

pass "Best didn't crash";

is "@attempted", "A::Module AnAlternative LastChance", "tried all modules";
is "@loaded",    "LastChance", "loaded correct one - trace evidence";
is (Best->which("A::Module"), "LastChance", "loaded correct one - which()");

{
    package Someother;
    Test::More::is (Best->which("A::Module"), "LastChance", "loaded correct one - which() from other module"); 
}

# vim: ts=4 et ft=perl :
