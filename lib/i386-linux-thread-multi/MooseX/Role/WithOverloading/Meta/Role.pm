package MooseX::Role::WithOverloading::Meta::Role;
# ABSTRACT: Roles which support overloading
$MooseX::Role::WithOverloading::Meta::Role::VERSION = '0.16';
use Moose 0.94 ();
use Moose::Role;
use aliased 'MooseX::Role::WithOverloading::Meta::Role::Composite', 'CompositionRole';
use namespace::autoclean;

around composition_class_roles => sub {
    my ($orig, $self) = @_;
    return $self->$orig, CompositionRole;
};

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

MooseX::Role::WithOverloading::Meta::Role - Roles which support overloading

=head1 VERSION

version 0.16

=head1 AUTHORS

=over 4

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Tomas Doran <bobtfish@bobtfish.net>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
