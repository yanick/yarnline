use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'YarnLine',
    AUTHOR              => q{YOUR NAME <youremail@example.com>},
    VERSION_FROM        => 'lib/YarnLine.pm',
    ABSTRACT            => 'YOUR APPLICATION ABSTRACT',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'YAML'       => 0,
        'Dancer'     => 1.3095,
        'Net::OAuth::Client' => 0,
        'Dancer::Session::CHI' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'YarnLine-*' },
);
