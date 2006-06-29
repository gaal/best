use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Best',
    license             => 'perl',
    dist_author         => 'Gaal Yahas <gaal@forum2.org>',
    dist_version_from   => 'lib/Best.pm',
    build_requires => {
        'Test::More' => 0,
        'Test::Exception' => 0,
    },
    sign                => 1,
    add_to_cleanup      => [ 'Best-*' ],
);

$builder->create_build_script();
