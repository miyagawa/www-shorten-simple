use inc::Module::Install;
name 'WWW-Shorten-Simple';
all_from 'lib/WWW/Shorten/Simple.pm';

build_requires 'Test::More';
use_test_base;
auto_include_deps;
author_tests('xt');
auto_set_repository;
WriteAll;
