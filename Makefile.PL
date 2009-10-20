use 5.006001;
use ExtUtils::MakeMaker;
use ExtUtils::Liblist;

WriteMakefile(
    NAME                => 'Net::NIS::Netgroup',
    AUTHOR              => 'Bastian Friedrich <bastian.friedrich@collax.com>',
    VERSION_FROM        => 'lib/Net/NIS/Netgroup.pm',
    ABSTRACT_FROM       => 'lib/Net/NIS/Netgroup.pm',
    PREREQ_PM           => {
        'Exporter'      => 0,
        'Test::More'    => 0,
        'Test::Builder' => 0,
    },

    NEEDS_LINKING       => 1,
    INC                 => '-I.',

    EXE_FILES           => [],
    dist => { COMPRESS => 'bzip2 -9f', SUFFIX => 'bz2' },
    clean => { FILES => 'Net-NIS-Netgroup-*.tar.*' },
);
