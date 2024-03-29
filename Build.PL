use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CPAN::LinksToDocs::No404s',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/CPAN/LinksToDocs/No404s.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                  => 1.04,
        'Class::Data::Accessor' => 0.04001,
        'CPAN::LinksToDocs'     => 0.001,
        'URI'                   => 1.35,
        'LWP::UserAgent'        => 2.036,
    },
    add_to_cleanup      => [ 'CPAN-LinksToDocs-No404s-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
