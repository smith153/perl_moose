package HasAccount;
use Moose::Role;

has balance => (is => 'rw');

sub deposit
{
  my $self = shift;
  my $amount = shift;
  if(defined $amount){
	$self->balance($self->balance + $amount);
  }

}

sub withdraw
{
  my $self = shift;
  my $amount = shift;

  if($self->balance - $amount >= 0){
	$self->balance($self->balance + $check);
  }
  else{
	die print "Balance cannot be negative";
  }

}


no Moose::Role;
1;
