package YarnLine;
use Dancer ':syntax';

use Dancer::Plugin::Cache::CHI;

use 5.10.0;

our $VERSION = '0.1';

use URI;
use URI::QueryParam;
use LWP::UserAgent;

use Data::Printer;

use Net::OAuth::Client;
use Net::OAuth::AccessToken;

sub auth_client();
sub access_token();

get '/' => sub {
    return redirect '/timeline/'.session 'username' if session 'username';

    template 'index';
};


get '/auth' => sub {
    redirect auth_client->authorize_url;
};

get '/auth/callback' => sub {
    my $access = auth_client->get_access_token( 
        param( 'oauth_token' ),
        param( 'oauth_verifier' ),
    );

    session rav_token => $access->token;
    session rav_token_secret => $access->token_secret;
    session username => param 'username';
    
    forward '/';
};

get '/timeline' => sub {
    send_error( "Bad call" ) unless param 'raveler';

    redirect '/timeline/' . param 'raveler';
};

get '/timeline/:raveler' => sub {
    redirect '/' unless session 'username';

    template 'timeline.mason' => {
        username => param( 'raveler' ),
    };
    
};

get '/timeline/:raveler/data.json' => sub {

    send_error("Not allowed", 403) unless session 'username';

    my $raveler = param 'raveler';

    my $projects = cache->compute( $raveler => sub { 
        from_json( access_token->get(
            join '/', '/projects', $raveler, 'list.json'
        )->content )
    });

    my $timeline = convert_raw_projects( param('raveler') => $projects );

    return $timeline;
};

sub convert_raw_projects {
    my $who = shift;
    my $projects = shift;

    my %timeline = (
        timeline => {
            headline => $who . "'s yarnline",
            type => 'default',
#            text => 'Foo foo foo?',
            date => [],
        },
    );

    $DB::single =1;
    for my $p ( @{ $projects->{projects} } ) {
        next unless $p->{started};

        my %asset;
        if ( my $f = $p->{first_photo} ) {
            %asset = (
                media => $f->{medium_url},
                thumbnail => $f->{thumbnail_url},
            );
        }
        my %project = (
            headline => "<a href='$p->{url}'>$p->{name}</a>",
            startDate => $p->{started} =~ s/\//,/gr,
            ( endDate => $p->{completed} =~ s/\//,/gr ) x !!$p->{completed},
#            text => $p->{notes},
            ( asset => \%asset ) x !!%asset,
            tag => $p->{status_name},
        );

        push $timeline{timeline}{date}, \%project;
    }

    return \%timeline;
}

sub auth_client() {
    my $rav = config->{ravelry};

    return Net::OAuth::Client->new(
        $rav->{tokens}{consumer_key},
        $rav->{tokens}{consumer_secret},
        site => 'https://api.ravelry.com',
        request_token_path => '/oauth/request_token',
        authorize_path => '/oauth/authorize',
        access_token_path => '/oauth/access_token',
        callback => uri_for( $rav->{callback} ),
        session => \&session,
    );
}

sub access_token {
    return Net::OAuth::AccessToken->new(
        client => auth_client(),
        token => session( 'rav_token' ),
        token_secret => session( 'rav_token_secret' ),
    );
}

true;
