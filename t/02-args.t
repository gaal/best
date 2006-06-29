#!perl -T

use strict;
use warnings;

use vars qw/@attempted @loaded @args/;

use Test::More tests => 4;

use lib 't';
# This test is identical to 01-basic except the modules
# are in a listref.
use Best [ [qw/A::Module AnAlternative LastChance/], qw/moose elk/ ];

pass "Best didn't crash";

is "@attempted", "A::Module AnAlternative LastChance";
is "@loaded",    "LastChance";
is "@args",      "LastChance moose elk";

# vim: ts=4 et ft=perl :


