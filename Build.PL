use strict;
use warnings;

use Module::Build;

my %module_build_args = (
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "See the timeline of your Ravelry projects",
  "dist_author" => [
    "Yanick Champoux <yanick\@cpan.org>"
  ],
  "dist_name" => "YarnLine",
  "dist_version" => "0.0.1",
  "license" => "perl",
  "module_name" => "YarnLine",
  "requires" => {
    perl         => '5.14.0',
    'Dancer'     => 1.3095,
    'Test::More' => 0,
    'YAML'       => 0,
    'Net::OAuth::Simple' => 0,
    'URI' => 0,
    'URI::QueryParam' => 0,
    'LWP::UserAgent' => 0, 
    'Data::Printer' => 0,
    'Dancer::Template::Mason' => 0,
  },
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
