package Page;

use strict;
use warnings;

use Moose::Role;

use Template::Caribou;
use Template::Caribou::Tags::HTML ':all';
use Template::Caribou::Tags::HTML::Extended ':all';

use Method::Signatures;

use Template::Caribou::Tags
    'attr',
    mytag => { -as => 'div_center', attr => { align => 'center' } }; 

use Sub::Exporter -setup => {
    exports => [qw/ div_center /]
};


with 'Template::Caribou';

has page_title => (
    is => 'ro',
    default => 'Yarnline',
    lazy => 1,
);

template style => sub { '' };  # default is pretty boring

template page => method {
    html {
        head {
            title { $self->page_title };
            $self->show('style');
        };
        body {
            $self->show('main');
        };
    };
};

1;
