package LastChance;

push @::attempted, __PACKAGE__;

sub import {
    # no problems with this module!
    push @::loaded, __PACKAGE__;
    push @::args, @_;
}

1;
