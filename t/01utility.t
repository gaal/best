#!perl
use Test::More tests => 23;
use Best ();

for ( [], bless( [] ), bless( {}, 'Overloaded' ) ) {
    ok( Best::does_arrayref($_), "$_ does array" );
}
for ( {}, sub { }, 'String', '1.00' ) {
    ok( !Best::does_arrayref($_), "$_ doesn't do array" );
}

for ( {}, bless( {} ), bless( [], 'Overloaded' ) ) {
    ok( Best::does_hashref($_), "$_ does hash" );
}
for ( [], sub { }, 'String', '1.00' ) {
    ok( !Best::does_hashref($_), "$_ doesn't do hash" );
}

for ( 1, 1.0, '1.00_01', 'v6' ) {
    ok( Best::looks_like_version($_), "$_ looks like version" );
}

# Honest to god, this test actually protects against a real bug.
for (qw( A::Module AnAlternative LastChance Version::Ok Version::TooLow )) {
    ok( !Best::looks_like_version($_), "$_ doesn't look like version" );
}

package Overloaded;
use overload
    '""'  => sub { overload::StrVal( $_[0] ) },
    '@{}' => sub { return [] },
    '%{}' => sub { return {} };
