package Employee;
use Moose;
use namespace::autoclean;
extends "Person";

has salary => (is => 'rw');
has ssn => (is => 'ro');

override full_name => sub {
  my $self = shift;
  super();
  return  $self->first_name . " " . $self->last_name . " (" .  $self->title .")";

};


__PACKAGE__->meta->make_immutable;

1;
