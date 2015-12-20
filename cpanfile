requires 'ExtUtils::MakeMaker', '7.1';
requires 'Filter::Util::Call';
requires 'Test::More';

on build => sub {
    requires 'ExtUtils::MakeMaker';
};
