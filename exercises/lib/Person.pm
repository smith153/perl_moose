package Person;
use Moose;
use namespace::autoclean;

with "Printable";
with "HasAccount";

has first_name => (is => 'rw', required => 1);
has last_name => (is => 'rw', required => 1);
has title => (is => 'rw', clearer => 'clear_title', predicate => 'has_title');

sub BUILDARGS
{
  my $self = shift;
  my  $ref= $_[0];
  if(ref $ref  eq 'ARRAY' and @{$ref} == 2){
	return {
	first_name => $ref->[0], 
	last_name => $ref->[1],
	};
  }
  return $self->SUPER::BUILDARGS(@_);
}

sub full_name
{
  my $self = shift;
  my $str = $self->first_name . " " . $self->last_name;
  if($self->has_title){
	$str .= " (" . $self->title . ")";
  }
  return $str;

}

sub as_string
{
  my $self = shift;
  return $self->full_name();
}



__PACKAGE__->meta->make_immutable;
1;
