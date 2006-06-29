#!perl -T

use strict;
use warnings;

use vars qw/@attempted @loaded/;

use Test::More tests => 3;

use lib 't';
# This test is identical to 01-basic except the modules
# are in a listref.
use Best [ qw/A::Module AnAlternative LastChance/ ];

pass "Best didn't crash";

is "@attempted", "A::Module AnAlternative LastChance";
is "@loaded",    "LastChance";
#is ((join "", keys %INC), "LastChance"); # todo: strengthen test

# vim: ts=4 et ft=perl :

