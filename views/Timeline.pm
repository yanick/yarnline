package Timeline;

use Moose;

use Template::Caribou;
use Template::Caribou::Utils;
use Template::Caribou::Tags 'attr';
use Template::Caribou::Tags::HTML ':all';
use Template::Caribou::Tags::HTML::Extended ':all';

use Method::Signatures;

with 'Template::Caribou', 'Page';

has username => (
    is => 'ro',
);

has '+page_title' => ( default => method { $self->username . "'s Yarline" } );

template main => method {
    $self->show('genbox');
    $self->show('timelinejs');
};

template timelinejs => method {
    div { attr id => 'timeline-embed'; };
    javascript sprintf <<'END', $self->username;
		    var timeline_config = {
				width: 	"100%",
				height: "100%",
				source: '/timeline/%s/data.json',
				start_at_end:	true,					//OPTIONAL
				hash_bookmark: true,					//OPTIONAL
				css: 	'/css/timeline.css',	//OPTIONAL
				js: 	'/javascripts/timeline-min.js'	//OPTIONAL
			}
END

    js_include "/javascripts/timeline-embed.js";
};

template genbox => method {
    div { attr id => 'genbox';
        form { attr method => 'GET', action => '/timeline';
            label { attr for => 'raveler'; 
                'another yarnline: ' 
            };
            input { 
                attr name => 'raveler', type => 'text', size => 15,
                     placeholder => "raveler's id"; };
            input { attr type => 'submit', value => 'generate'; };
            };
        };
};

template style => method {
    css q[
			html, body {
				height:100%;
				padding: 0px;
				margin: 0px;
			}
			#timeline-embed{
				margin:0px !important;
				border:0px solid #CCC !important;
				padding:0px !important;
				-webkit-border-radius:0px !important;
				-moz-border-radius:0px !important;
				border-radius:0px !important;
				-moz-box-shadow:0 0px 0px rgba(0, 0, 0, 0.25) !important;
				-webkit-box-shadow:0 0px 0px rgba(0, 0, 0, 0.25) !important;
				box-shadow:0px 0px 0px rgba(0, 0, 0, 0.25) !important;
			}

            #genbox {
                font-family: Arial, sans-serif;
                //font-size: 12pt;
                text-align: right;
                padding: 1em;
            }
			
];
};
