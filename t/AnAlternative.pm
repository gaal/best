package AnAlternative;

push @::attempted, __PACKAGE__;

sub import {
    die "This module fails on import only";
}

1;
