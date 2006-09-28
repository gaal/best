#!perl
use Test::More tests => 6;
use Best ();

ok( Best::does_arrayref(       [] ) );
ok( Best::does_arrayref( bless [] ) );
ok( Best::does_arrayref( bless {}, 'Overloaded' ) );

ok( Best::does_hashref(       {} ) );
ok( Best::does_hashref( bless {} ) );
ok( Best::does_hashref( bless [], 'Overloaded' ) );

# looks_like_version

package Overloaded;
use overload
    '@{}' => sub { return [] },
    '%{}' => sub { return {} };
