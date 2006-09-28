use inc::Module::Install;

# Generate our tests prior to WriteAll.
system $^X, '-T', 'Tests.PL';

name     'Best';
all_from 'lib/Best.pm';
license  'MIT';
build_requires 'Test::More' => 0, 'Test::Exception' => 0;
sign;

auto_install;
WriteAll;
