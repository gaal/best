#!perl -T

use strict;
use warnings;

use vars qw/@attempted @loaded @args/;

use Test::More tests => 4;

use lib 't';
use Best [ [qw/A::Module AnAlternative LastChance/], [] ];

pass "Best didn't crash";

is "@attempted", "A::Module AnAlternative";
is "@loaded",    ""; # AnAlternative's import was not called
ok !defined @args;

# vim: ts=4 et ft=perl :



