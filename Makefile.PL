use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

my @programs = ('bin/yatranslate');

WriteMakefile(
    NAME                => 'APP::Yatranslate',
    AUTHOR              => q{Milovidov Mikhail <milovidovwork@yandex.ru>},
    VERSION_FROM        => 'bin/yatranslate',
    ABSTRACT            => 'Program for translation using Yandex Translation Api.',
    EXE_FILES           => [@programs],
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PREREQ_PM => {
        'Config::IniFiles' => 0,
        'Const::Fast' => 0,
        'Getopt::Long' => 0,
        'Carp' => 0,
        'File::Touch' => 0,
        'Lingua::Translate::Yandex' => 0.03,
        'Encode' => 0,
        'Encode::Locale' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'yatranslate' },
);
