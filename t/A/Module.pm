package A::Module;

push @::attempted, __PACKAGE__;

die "This module fails to load, completely.";
