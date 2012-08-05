package Index;

use Moose;

use Template::Caribou;
use Template::Caribou::Utils;
use Template::Caribou::Tags 'attr';
use Template::Caribou::Tags::HTML ':all';
use Template::Caribou::Tags::HTML::Extended ':all';

use Method::Signatures;

use Page 'div_center';

with 'Template::Caribou', 'Page';

template style => method {
    css q[
body {
    font-family: Arial, sans-serif;
}
h1 { text-align: center; }
p {
    font-size: 13pt;
    margin-left: 15%;
    margin-right: 15%;
    text-align: justified;
}
    ];
};

template main => method {

    h1 { 'Yarnline' };

    markdown q{
Welcome to Yarline, a little mashup that takes your (or anybody else's) projects on Ravelry and 
show them to you as a timeline looking like this: };

   div_center { 
       image  "/images/screenshot.png", alt=> "yarnline screenshot";
   };

   markdown q{
How to use it? Dirt simple: click on the '*authenticate*' button
below, confirms that you'll allow this app to do its thing (we're only peeking
in project lists and not doing anything else, I swear) and... voil&agrave;. To
look at the timeline of anybody else but you, put their ravelry username in 
the top-right box and click on '*generate*'.

Happy Yarlining!
};

    div_center { 
        form {
            attr method => 'GET', action => '/auth';
            input {
                attr type => 'submit', value => 'authenticate';
            };
        }
    };

};

__PACKAGE__->meta->make_immutable;

1;
