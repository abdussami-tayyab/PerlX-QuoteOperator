use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'PerlX::QuoteOperator',
    license             => 'perl',
    dist_author         => q{Barry Walsh <draegtun@cpan.org>},
    dist_version_from   => 'lib/PerlX/QuoteOperator.pm',
    
    build_requires => {
        'Test::More'            => 0,
        'Directory::Scratch'    => 0,
    },

    requires => {
        'Devel::Declare'        => 0.006007,
        'Text::Balanced'        => 0,
        'LWP::Simple'           => 0,
    },

    add_to_cleanup      => [ 'PerlX-QuoteOperator-*' ],
    
    meta_merge => {
      resources => {
          bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=PerlX-QuoteOperator',
          repository => 'http://github.com/draegtun/PerlX-QuoteOperator'
      }
    },
    
);

$builder->create_build_script();
