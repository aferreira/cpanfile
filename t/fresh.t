
use strict;
use Module::CPANfile;
use Test::More;

# Calling public methods on an empty cpanfile
{
    my $file = Module::CPANfile->new;

    is_deeply( $file->prereqs, CPAN::Meta::Prereqs->new,
        'Module::CPANfile->new->prereqs' );
    is_deeply( $file->prereq_specs, {}, 'Module::CPANfile->new->prereq_specs' );
    is_deeply( [ $file->features ], [], 'Module::CPANfile->new->features' );
    is( $file->to_string, '', 'Module::CPANfile->new->to_string' );
}
done_testing;
