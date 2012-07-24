use Test::More tests => 2;
use strict;
use warnings;

# the order is important
use YarnLine;
use Dancer::Test;
use Dancer ':syntax';

config->{ravelry_key} = '3d8c0f31b03c62f4852295edfe6f8a285c7cd91c';

my $response = dancer_response( GET => '/projects/yenzie/timeline' );

print $response->{content};
