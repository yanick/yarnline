package YarnLine;
use Dancer ':syntax';

use 5.14.0;

our $VERSION = '0.0.1';

use URI;
use URI::QueryParam;
use LWP::UserAgent;
use Data::Printer;
use Net::OAuth::Simple;

get '/' => sub {
    template 'timeline.mason' => {
        username => config->{ravelry_user},
    };
    
};

get '/timeline/:raveler/data.json' => sub {

    my $rav_uri = URI->new( 'http://api.ravelry.com' );
    $rav_uri->path( join '/', "/projects", param('raveler'), 'progress.json');
    $rav_uri->query_param( key => config->{ravelry_key} );
    $rav_uri->query_param( status =>
        'in-progress hibernating finished frogged' );
    $rav_uri->query_param( notes => 'true' );

    my $projects = from_json( 
        LWP::UserAgent->new->get( ''.$rav_uri )->content
    );

    my $timeline = convert_raw_projects( $projects );

    return $timeline;
};

sub convert_raw_projects {
    my $projects = shift;

    my %timeline = (
        timeline => {
            headline => $projects->{user}{name} . "'s yarnline",
            type => 'default',
            text => '',
            date => [],
        },
    );

    for my $p ( @{ $projects->{projects} } ) {
        my %project = (
            headline => "<a href='$p->{url}'>$p->{name}</a>",
            startDate => $p->{started} =~ s/-/,/gr,
            ( endDate => $p->{completed} =~ s/-/,/gr ) x !!$p->{completed},
            text => $p->{notes},
            asset => {
                media => $p->{thumbnail}{medium},
                thumbnail => $p->{thumbnail}{src},
            },
            tag => $p->{status},
        );

        push $timeline{timeline}{date}, \%project;
    }

    return \%timeline;
}

true;
