use inc::Module::Install;

name            'Best';
all_from        'lib/Best.pm';

perl_version '5.006';
license 'bsd';
build_requires 'Test::More' => 0, 'Test::Exception' => 0;
sign;

auto_install;
WriteAll;
