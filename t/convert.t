use strict;
use warnings;

use Test::More tests => 1;                      # last test to print

use JSON;
use Data::Printer;
use YarnLine;

my $raw = from_json( do { local $/ = <DATA> } );

my $timeline = YarnLine::convert_raw_projects( $raw );

isa_ok $timeline => 'HASH';

print p $timeline;


__DATA__
{
   "user" : {
      "name" : "yenzie",
      "url" : "http://www.ravelry.com/people/yenzie"
   },
   "projects" : [
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "papa-lion",
         "url" : "http://www.ravelry.com/projects/yenzie/papa-lion",
         "blogPosts" : [],
         "completed" : "2011-04-01",
         "happiness" : 2,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5281/5307164210_eae70aa07c_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5307164210",
            "medium" : "http://farm6.static.flickr.com/5281/5307164210_eae70aa07c.jpg"
         },
         "progress" : 100,
         "name" : "Papa Lion",
         "madeFor" : "Xavier",
         "yarns" : [],
         "pattern" : null,
         "notes" : null,
         "started" : "2010-12-12"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "coffee-tumbler-sleeve",
         "url" : "http://www.ravelry.com/projects/yenzie/coffee-tumbler-sleeve",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4043/5119604426_c519ddd324_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5119604426",
            "medium" : "http://farm5.static.flickr.com/4043/5119604426_c519ddd324.jpg"
         },
         "progress" : 100,
         "name" : "Coffee tumbler sleeve",
         "madeFor" : "me",
         "yarns" : [
            {
               "name" : "Maxima",
               "url" : "http://www.ravelry.com/yarns/library/manos-del-uruguay-maxima",
               "brand" : "Manos del Uruguay"
            }
         ],
         "pattern" : null,
         "notes" : null,
         "started" : null
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "scouine",
         "url" : "http://www.ravelry.com/projects/yenzie/scouine",
         "blogPosts" : [],
         "completed" : "2010-12-29",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5164/5307177360_d08e24bec1_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5307177360",
            "medium" : "http://farm6.static.flickr.com/5164/5307177360_d08e24bec1.jpg"
         },
         "progress" : 0,
         "name" : "Scouine",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : null,
         "notes" : null,
         "started" : "2010-12-01"
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 1,
         "size" : "10cm x 6cm",
         "permalink" : "walkman-mp3-sleeve",
         "url" : "http://www.ravelry.com/projects/yenzie/walkman-mp3-sleeve",
         "blogPosts" : [],
         "completed" : "2010-01-30",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://images4.ravelrycache.com/uploads/yenzie/21626118/IMG_4140_square.JPG",
            "flickrUrl" : "#",
            "medium" : "http://images4.ravelrycache.com/uploads/yenzie/21626118/IMG_4140_medium.JPG"
         },
         "progress" : 0,
         "name" : "walkman mp3 sleeve",
         "madeFor" : "myself",
         "yarns" : [],
         "pattern" : null,
         "notes" : "<p>Not the most elaborated project ever, but hey, it&#8217;s a start. :-)</p>",
         "started" : "2010-01-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "nar-amigurumi",
         "url" : "http://www.ravelry.com/projects/yenzie/nar-amigurumi",
         "blogPosts" : [],
         "completed" : "2010-07-11",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4121/4783915693_29a2950ce6_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/4783915693",
            "medium" : "http://farm5.static.flickr.com/4121/4783915693_29a2950ce6.jpg"
         },
         "progress" : 100,
         "name" : "När amigurumi",
         "madeFor" : null,
         "yarns" : [],
         "pattern" : null,
         "notes" : "<p>An amigurumi version of När, a character from the comic book ACP (<a href=\"http://academiedeschasseursdeprimes.ca/\">http://academiedeschasseursdeprimes.ca/</a>)</p>",
         "started" : null
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "10-row-fingerless-gloves",
         "url" : "http://www.ravelry.com/projects/yenzie/10-row-fingerless-gloves",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4075/5411940478_9378625b35_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5411940478",
            "medium" : "http://farm5.static.flickr.com/4075/5411940478_9378625b35.jpg"
         },
         "progress" : 100,
         "name" : "Hacker gloves",
         "madeFor" : "me",
         "yarns" : [
            {
               "name" : "Ultra Alpaca Light",
               "url" : "http://www.ravelry.com/yarns/library/berroco-ultra-alpaca-light",
               "brand" : "Berroco"
            }
         ],
         "pattern" : {
            "name" : "13-Row Fingerless Gloves",
            "url" : "http://www.ravelry.com/patterns/library/13-row-fingerless-gloves",
            "designer" : {
               "name" : "Amanda Rae Miller",
               "url" : "http://www.ravelry.com/designers/amanda-rae-miller"
            }
         },
         "notes" : null,
         "started" : null
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "amigurumi-mummy-ornament",
         "url" : "http://www.ravelry.com/projects/yenzie/amigurumi-mummy-ornament",
         "blogPosts" : [],
         "completed" : "2010-10-24",
         "happiness" : 4,
         "thumbnail" : {
            "src" : "http://farm2.static.flickr.com/1356/5119603254_11d98a2bc5_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5119603254",
            "medium" : "http://farm2.static.flickr.com/1356/5119603254_11d98a2bc5.jpg"
         },
         "progress" : 100,
         "name" : "AmiguMummy",
         "madeFor" : "Halloween",
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Amigurumi Mummy Ornament",
            "url" : "http://www.ravelry.com/patterns/library/amigurumi-mummy-ornament",
            "designer" : {
               "name" : "Lion Brand Yarn",
               "url" : "http://www.ravelry.com/designers/lion-brand-yarn"
            }
         },
         "notes" : null,
         "started" : "2010-10-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "amigurumi-octopus",
         "url" : "http://www.ravelry.com/projects/yenzie/amigurumi-octopus",
         "blogPosts" : [],
         "completed" : "2010-06-14",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4061/4702006696_3c954d39a9_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/4702006696",
            "medium" : "http://farm5.static.flickr.com/4061/4702006696_3c954d39a9.jpg"
         },
         "progress" : 100,
         "name" : "Squee, the Happy Homicidal Hoctopus",
         "madeFor" : "Office friend",
         "yarns" : [],
         "pattern" : {
            "name" : "Amigurumi Octopus",
            "url" : "http://www.ravelry.com/patterns/library/amigurumi-octopus-2",
            "designer" : {
               "name" : "Lion Brand Yarn",
               "url" : "http://www.ravelry.com/designers/lion-brand-yarn"
            }
         },
         "notes" : null,
         "started" : null
      },
      {
         "favorited" : 2,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "baby-snow-dragon",
         "url" : "http://www.ravelry.com/projects/yenzie/baby-snow-dragon",
         "blogPosts" : [],
         "completed" : "2011-03-01",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5295/5523364547_45a08ebcff_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5523364547",
            "medium" : "http://farm6.static.flickr.com/5295/5523364547_45a08ebcff.jpg"
         },
         "progress" : 100,
         "name" : "Sniff the dragon",
         "madeFor" : "Anja",
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Baby Snow Dragon",
            "url" : "http://www.ravelry.com/patterns/library/baby-snow-dragon",
            "designer" : {
               "name" : "Marjorie Jones",
               "url" : "http://www.ravelry.com/designers/marjorie-jones"
            }
         },
         "notes" : null,
         "started" : "2011-03-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "claude-the-2-humped-camel",
         "url" : "http://www.ravelry.com/projects/yenzie/claude-the-2-humped-camel",
         "blogPosts" : [],
         "completed" : "2010-10-24",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm2.static.flickr.com/1247/5119001831_aab2ae8161_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5119001831",
            "medium" : "http://farm2.static.flickr.com/1247/5119001831_aab2ae8161.jpg"
         },
         "progress" : 100,
         "name" : "Just Another Camel",
         "madeFor" : "Me!",
         "yarns" : [],
         "pattern" : {
            "name" : "Claude the 2 humped Camel",
            "url" : "http://www.ravelry.com/patterns/library/claude-the-2-humped-camel",
            "designer" : {
               "name" : "KristieMN",
               "url" : "http://www.ravelry.com/designers/kristiemn"
            }
         },
         "notes" : null,
         "started" : "2010-10-01"
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 1,
         "size" : null,
         "permalink" : "cthulhu",
         "url" : "http://www.ravelry.com/projects/yenzie/cthulhu",
         "blogPosts" : [],
         "completed" : "2010-08-29",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4074/4944503315_7bd4d7c124_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/4944503315",
            "medium" : "http://farm5.static.flickr.com/4074/4944503315_7bd4d7c124.jpg"
         },
         "progress" : 100,
         "name" : "Li'll Cthulu",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Cthulhu",
            "url" : "http://www.ravelry.com/patterns/library/cthulhu-2",
            "designer" : {
               "name" : "NeedleNoodles",
               "url" : "http://www.ravelry.com/designers/needlenoodles"
            }
         },
         "notes" : null,
         "started" : "2010-07-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "cthulhu-2",
         "url" : "http://www.ravelry.com/projects/yenzie/cthulhu-2",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4091/5072586537_9242ea22e6_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5072586537",
            "medium" : "http://farm5.static.flickr.com/4091/5072586537_9242ea22e6.jpg"
         },
         "progress" : 100,
         "name" : "Li'll Cthulu II",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Cthulhu",
            "url" : "http://www.ravelry.com/patterns/library/cthulhu-2",
            "designer" : {
               "name" : "NeedleNoodles",
               "url" : "http://www.ravelry.com/designers/needlenoodles"
            }
         },
         "notes" : null,
         "started" : "2010-09-19"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "cthulhu-3",
         "url" : "http://www.ravelry.com/projects/yenzie/cthulhu-3",
         "blogPosts" : [],
         "completed" : "2011-02-20",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5257/5466924466_ecb39194c5_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5466924466",
            "medium" : "http://farm6.static.flickr.com/5257/5466924466_ecb39194c5.jpg"
         },
         "progress" : 0,
         "name" : "Li'll Cthulhu III",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Cthulhu",
            "url" : "http://www.ravelry.com/patterns/library/cthulhu-2",
            "designer" : {
               "name" : "NeedleNoodles",
               "url" : "http://www.ravelry.com/designers/needlenoodles"
            }
         },
         "notes" : null,
         "started" : "2011-02-01"
      },
      {
         "favorited" : 0,
         "status" : "in-progress",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "frank-the-whale-amigurumi",
         "url" : "http://www.ravelry.com/projects/yenzie/frank-the-whale-amigurumi",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : null,
         "thumbnail" : null,
         "progress" : 0,
         "name" : "Gamboling Beluga",
         "madeFor" : null,
         "yarns" : [],
         "pattern" : {
            "name" : "Frank the Whale Amigurumi",
            "url" : "http://www.ravelry.com/patterns/library/frank-the-whale-amigurumi",
            "designer" : {
               "name" : "Jan Baxter",
               "url" : "http://www.ravelry.com/designers/jan-baxter"
            }
         },
         "notes" : null,
         "started" : null
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "grim-reaper",
         "url" : "http://www.ravelry.com/projects/yenzie/grim-reaper",
         "blogPosts" : [],
         "completed" : "2011-02-20",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5091/5466925378_762df3aa2d_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5466925378",
            "medium" : "http://farm6.static.flickr.com/5091/5466925378_762df3aa2d.jpg"
         },
         "progress" : 0,
         "name" : "Li'll Death",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Sugar'n Cream Solids & Denim",
               "url" : "http://www.ravelry.com/yarns/library/lily-sugarn-cream-solids--denim",
               "brand" : "Lily"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Grim Reaper",
            "url" : "http://www.ravelry.com/patterns/library/grim-reaper",
            "designer" : {
               "name" : "NeedleNoodles",
               "url" : "http://www.ravelry.com/designers/needlenoodles"
            }
         },
         "notes" : null,
         "started" : "2011-02-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "halloween-ghost-ornament",
         "url" : "http://www.ravelry.com/projects/yenzie/halloween-ghost-ornament",
         "blogPosts" : [],
         "completed" : "2010-10-09",
         "happiness" : 4,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4083/5072571545_6b93e44c33_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5072571545",
            "medium" : "http://farm5.static.flickr.com/4083/5072571545_6b93e44c33.jpg"
         },
         "progress" : 100,
         "name" : "Wee Geist",
         "madeFor" : "Halloween",
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Halloween Ghost Ornament",
            "url" : "http://www.ravelry.com/patterns/library/halloween-ghost-ornament",
            "designer" : {
               "name" : "Lion Brand Yarn",
               "url" : "http://www.ravelry.com/designers/lion-brand-yarn"
            }
         },
         "notes" : null,
         "started" : "2010-10-08"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "halloween-ghost-ornament-2",
         "url" : "http://www.ravelry.com/projects/yenzie/halloween-ghost-ornament-2",
         "blogPosts" : [],
         "completed" : "2010-10-12",
         "happiness" : 4,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4085/5080050516_bbc21201dd_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5080050516",
            "medium" : "http://farm5.static.flickr.com/4085/5080050516_bbc21201dd.jpg"
         },
         "progress" : 100,
         "name" : "Wee Geist II",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Halloween Ghost Ornament",
            "url" : "http://www.ravelry.com/patterns/library/halloween-ghost-ornament",
            "designer" : {
               "name" : "Lion Brand Yarn",
               "url" : "http://www.ravelry.com/designers/lion-brand-yarn"
            }
         },
         "notes" : null,
         "started" : "2010-10-09"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-4",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-4",
         "blogPosts" : [],
         "completed" : "2010-10-14",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm2.static.flickr.com/1344/5119002051_1b1b83f932_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5119002051",
            "medium" : "http://farm2.static.flickr.com/1344/5119002051_1b1b83f932.jpg"
         },
         "progress" : 0,
         "name" : "Mini-När IV",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2010-10-13"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-13",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-13",
         "blogPosts" : [],
         "completed" : "2011-11-06",
         "happiness" : 3,
         "thumbnail" : null,
         "progress" : 0,
         "name" : "Mini-När X",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Wool of the Andes",
               "url" : "http://www.ravelry.com/yarns/library/knit-picks-wool-of-the-andes",
               "brand" : "Knit Picks"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-11-06"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-8",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-8",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4144/5411329703_dcdfe19a67_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5411329703",
            "medium" : "http://farm5.static.flickr.com/4144/5411329703_dcdfe19a67.jpg"
         },
         "progress" : 100,
         "name" : "Mini-När VIII",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : null
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-5",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-5",
         "blogPosts" : [],
         "completed" : "2010-11-01",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5165/5227512893_885227aa67_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5227512893",
            "medium" : "http://farm6.static.flickr.com/5165/5227512893_885227aa67.jpg"
         },
         "progress" : 0,
         "name" : "Mini-När V",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2010-11-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-14",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-14",
         "blogPosts" : [],
         "completed" : "2012-02-05",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://images4.ravelrycache.com/uploads/yenzie/91948412/document_upload22468-4_square.jpg",
            "flickrUrl" : "#",
            "medium" : "http://images4.ravelrycache.com/uploads/yenzie/91948412/document_upload22468-4_medium.jpg"
         },
         "progress" : 0,
         "name" : "Nar XI",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Cascade 220 Heathers",
               "url" : "http://www.ravelry.com/yarns/library/cascade-yarns-cascade-220-heathers",
               "brand" : "Cascade Yarns"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : null
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-9",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-9",
         "blogPosts" : [],
         "completed" : "2011-01-01",
         "happiness" : 3,
         "thumbnail" : null,
         "progress" : 100,
         "name" : "Mini-När IX",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-01-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-6",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-6",
         "blogPosts" : [],
         "completed" : "2010-12-01",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5163/5307163800_c52bf4a78c_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5307163800",
            "medium" : "http://farm6.static.flickr.com/5163/5307163800_c52bf4a78c.jpg"
         },
         "progress" : 0,
         "name" : "Mini-När VI",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2010-12-01"
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament",
         "blogPosts" : [],
         "completed" : "2010-09-07",
         "happiness" : 4,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4144/4969813842_5d91077665_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/4969813842",
            "medium" : "http://farm5.static.flickr.com/4144/4969813842_5d91077665.jpg"
         },
         "progress" : 100,
         "name" : "Mini-När",
         "madeFor" : "ACP",
         "yarns" : [],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : "<p>Jellyfish adapted to look like a När of the comic book Académie des Chasseurs de Primes</p>",
         "started" : "2010-09-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-10",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-10",
         "blogPosts" : [],
         "completed" : "2011-01-01",
         "happiness" : null,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4094/5411940798_e109ba4295_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5411940798",
            "medium" : "http://farm5.static.flickr.com/4094/5411940798_e109ba4295.jpg"
         },
         "progress" : 0,
         "name" : "Mini-När IX",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-01-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-7",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-7",
         "blogPosts" : [],
         "completed" : "2011-01-15",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5125/5361883945_b3432f31a0_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5361883945",
            "medium" : "http://farm6.static.flickr.com/5125/5361883945_b3432f31a0.jpg"
         },
         "progress" : 100,
         "name" : "Mini-när VII",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-01-15"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-2",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-2",
         "blogPosts" : [],
         "completed" : "2010-09-08",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4103/4988203919_64048f8357_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/4988203919",
            "medium" : "http://farm5.static.flickr.com/4103/4988203919_64048f8357.jpg"
         },
         "progress" : 100,
         "name" : "Mini-När II",
         "madeFor" : "ACP launch event",
         "yarns" : [],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2010-09-04"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-11",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-11",
         "blogPosts" : [],
         "completed" : "2011-04-25",
         "happiness" : 4,
         "thumbnail" : null,
         "progress" : 100,
         "name" : "Mini-iNar viii",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Wool of the Andes",
               "url" : "http://www.ravelry.com/yarns/library/knit-picks-wool-of-the-andes",
               "brand" : "Knit Picks"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-04-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-3",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-3",
         "blogPosts" : [],
         "completed" : "2010-09-19",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4092/5013643376_47fd58b8f7_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5013643376",
            "medium" : "http://farm5.static.flickr.com/4092/5013643376_47fd58b8f7.jpg"
         },
         "progress" : 100,
         "name" : "Mini-Nar III",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2010-09-15"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "little-jellyfish-ornament-12",
         "url" : "http://www.ravelry.com/projects/yenzie/little-jellyfish-ornament-12",
         "blogPosts" : [],
         "completed" : "2011-11-04",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://images4.ravelrycache.com/uploads/yenzie/80112545/IMG_6613_square.JPG",
            "flickrUrl" : "#",
            "medium" : "http://images4.ravelrycache.com/uploads/yenzie/80112545/IMG_6613_medium.JPG"
         },
         "progress" : 0,
         "name" : "Mini-När IX",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Wool of the Andes",
               "url" : "http://www.ravelry.com/yarns/library/knit-picks-wool-of-the-andes",
               "brand" : "Knit Picks"
            }
         ],
         "pattern" : {
            "name" : "Little jellyfish ornament",
            "url" : "http://www.ravelry.com/patterns/library/little-jellyfish-ornament",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-11-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "medusa",
         "url" : "http://www.ravelry.com/projects/yenzie/medusa",
         "blogPosts" : [],
         "completed" : "2011-02-20",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5095/5466924738_17be509f85_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5466924738",
            "medium" : "http://farm6.static.flickr.com/5095/5466924738_17be509f85.jpg"
         },
         "progress" : 0,
         "name" : "Gorgone Zola",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Decor",
               "url" : "http://www.ravelry.com/yarns/library/patons-decor",
               "brand" : "Patons"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Medusa",
            "url" : "http://www.ravelry.com/patterns/library/medusa-4",
            "designer" : {
               "name" : "NeedleNoodles",
               "url" : "http://www.ravelry.com/designers/needlenoodles"
            }
         },
         "notes" : null,
         "started" : "2011-02-20"
      },
      {
         "favorited" : 0,
         "status" : "in-progress",
         "needles" : [],
         "comments" : 0,
         "size" : "medium",
         "permalink" : "mushroom-softies",
         "url" : "http://www.ravelry.com/projects/yenzie/mushroom-softies",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : null,
         "thumbnail" : null,
         "progress" : 75,
         "name" : "Magic Shroom",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Mushroom Softies",
            "url" : "http://www.ravelry.com/patterns/library/mushroom-softies",
            "designer" : {
               "name" : "Ana Paula Rimoli",
               "url" : "http://www.ravelry.com/designers/ana-paula-rimoli"
            }
         },
         "notes" : null,
         "started" : "2011-03-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "my-camel-joe-tapestry-crochet",
         "url" : "http://www.ravelry.com/projects/yenzie/my-camel-joe-tapestry-crochet",
         "blogPosts" : [],
         "completed" : "2011-08-01",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://images4.ravelrycache.com/uploads/yenzie/74584549/IMG_6474_square.JPG",
            "flickrUrl" : "#",
            "medium" : "http://images4.ravelrycache.com/uploads/yenzie/74584549/IMG_6474_medium.JPG"
         },
         "progress" : 0,
         "name" : "Just Another Perl Knitbag",
         "madeFor" : "me",
         "yarns" : [],
         "pattern" : {
            "name" : "My Camel Joe (Tapestry Crochet)",
            "url" : "http://www.ravelry.com/patterns/library/my-camel-joe-tapestry-crochet",
            "designer" : {
               "name" : "Carol Cathey",
               "url" : "http://www.ravelry.com/designers/carol-cathey"
            }
         },
         "notes" : null,
         "started" : "2011-07-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 1,
         "size" : null,
         "permalink" : "ninja",
         "url" : "http://www.ravelry.com/projects/yenzie/ninja",
         "blogPosts" : [],
         "completed" : "2010-08-14",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4074/4893452179_1ce5c2ddb4_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/4893452179",
            "medium" : "http://farm5.static.flickr.com/4074/4893452179_1ce5c2ddb4.jpg"
         },
         "progress" : 100,
         "name" : "Ninja Amigurumi",
         "madeFor" : "Xavier",
         "yarns" : [],
         "pattern" : {
            "name" : "Ninja",
            "url" : "http://www.ravelry.com/patterns/library/ninja",
            "designer" : {
               "name" : "NeedleNoodles",
               "url" : "http://www.ravelry.com/designers/needlenoodles"
            }
         },
         "notes" : null,
         "started" : "2010-08-01"
      },
      {
         "favorited" : 2,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "sheep",
         "url" : "http://www.ravelry.com/projects/yenzie/sheep",
         "blogPosts" : [],
         "completed" : "2010-11-13",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm5.static.flickr.com/4145/5176332833_bf27e2d755_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5176332833",
            "medium" : "http://farm5.static.flickr.com/4145/5176332833_bf27e2d755.jpg"
         },
         "progress" : 100,
         "name" : "Big Round Sheep",
         "madeFor" : "Anja",
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            },
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Sheep",
            "url" : "http://www.ravelry.com/patterns/library/sheep-5",
            "designer" : {
               "name" : "Alexandra Cohen",
               "url" : "http://www.ravelry.com/designers/alexandra-cohen"
            }
         },
         "notes" : null,
         "started" : "2010-11-06"
      },
      {
         "favorited" : 0,
         "status" : "in-progress",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "sheep-2",
         "url" : "http://www.ravelry.com/projects/yenzie/sheep-2",
         "blogPosts" : [],
         "completed" : null,
         "happiness" : null,
         "thumbnail" : null,
         "progress" : 45,
         "name" : "Big Round Sheep II",
         "madeFor" : null,
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "Sheep",
            "url" : "http://www.ravelry.com/patterns/library/sheep-5",
            "designer" : {
               "name" : "Alexandra Cohen",
               "url" : "http://www.ravelry.com/designers/alexandra-cohen"
            }
         },
         "notes" : null,
         "started" : "2011-03-01"
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "teeny-tiny-lobsters",
         "url" : "http://www.ravelry.com/projects/yenzie/teeny-tiny-lobsters",
         "blogPosts" : [],
         "completed" : "2011-04-25",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://images4.ravelrycache.com/uploads/yenzie/61300301/teeny_tiny_lobster_1_1_square.JPG",
            "flickrUrl" : "#",
            "medium" : "http://images4.ravelrycache.com/uploads/yenzie/61300301/teeny_tiny_lobster_1_1_medium.JPG"
         },
         "progress" : 100,
         "name" : "Teeny Tiny Lobster Test",
         "madeFor" : "test",
         "yarns" : [
            {
               "name" : "Wool of the Andes",
               "url" : "http://www.ravelry.com/yarns/library/knit-picks-wool-of-the-andes",
               "brand" : "Knit Picks"
            }
         ],
         "pattern" : {
            "name" : "Teeny Tiny Lobsters",
            "url" : "http://www.ravelry.com/patterns/library/teeny-tiny-lobsters",
            "designer" : {
               "name" : "Maggie Menzel",
               "url" : "http://www.ravelry.com/designers/maggie-menzel"
            }
         },
         "notes" : null,
         "started" : "2011-04-25"
      },
      {
         "favorited" : 1,
         "status" : "finished",
         "needles" : [],
         "comments" : 1,
         "size" : null,
         "permalink" : "the-guy-scarf",
         "url" : "http://www.ravelry.com/projects/yenzie/the-guy-scarf",
         "blogPosts" : [],
         "completed" : "2010-12-01",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5128/5227512671_96f9aa4c4a_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5227512671",
            "medium" : "http://farm6.static.flickr.com/5128/5227512671_96f9aa4c4a.jpg"
         },
         "progress" : 0,
         "name" : "Manly Scarf",
         "madeFor" : "Dad",
         "yarns" : [
            {
               "name" : "Shetland Chunky Tweeds",
               "url" : "http://www.ravelry.com/yarns/library/patons-shetland-chunky-tweeds",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "The Guy Scarf",
            "url" : "http://www.ravelry.com/patterns/library/the-guy-scarf",
            "designer" : {
               "name" : "Noelle Williams",
               "url" : "http://www.ravelry.com/designers/noelle-williams"
            }
         },
         "notes" : null,
         "started" : "2010-11-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 0,
         "size" : null,
         "permalink" : "the-guy-scarf-2",
         "url" : "http://www.ravelry.com/projects/yenzie/the-guy-scarf-2",
         "blogPosts" : [],
         "completed" : "2010-12-12",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5042/5256510636_f3c23b3309_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5256510636",
            "medium" : "http://farm6.static.flickr.com/5042/5256510636_f3c23b3309.jpg"
         },
         "progress" : 0,
         "name" : "Manly Scarf II",
         "madeFor" : "Stéphane",
         "yarns" : [
            {
               "name" : "Shetland Chunky Tweeds",
               "url" : "http://www.ravelry.com/yarns/library/patons-shetland-chunky-tweeds",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "The Guy Scarf",
            "url" : "http://www.ravelry.com/patterns/library/the-guy-scarf",
            "designer" : {
               "name" : "Noelle Williams",
               "url" : "http://www.ravelry.com/designers/noelle-williams"
            }
         },
         "notes" : null,
         "started" : "2010-12-01"
      },
      {
         "favorited" : 0,
         "status" : "finished",
         "needles" : [],
         "comments" : 1,
         "size" : null,
         "permalink" : "the-guy-scarf-3",
         "url" : "http://www.ravelry.com/projects/yenzie/the-guy-scarf-3",
         "blogPosts" : [],
         "completed" : "2011-01-13",
         "happiness" : 3,
         "thumbnail" : {
            "src" : "http://farm6.static.flickr.com/5282/5362495278_7c3dc327ba_s.jpg",
            "flickrUrl" : "http://www.flickr.com/photos/74944650@N00/5362495278",
            "medium" : "http://farm6.static.flickr.com/5282/5362495278_7c3dc327ba.jpg"
         },
         "progress" : 100,
         "name" : "Manly Scraf III",
         "madeFor" : "Hans",
         "yarns" : [
            {
               "name" : "Classic Wool",
               "url" : "http://www.ravelry.com/yarns/library/patons-classic-wool",
               "brand" : "Patons"
            }
         ],
         "pattern" : {
            "name" : "The Guy Scarf",
            "url" : "http://www.ravelry.com/patterns/library/the-guy-scarf",
            "designer" : {
               "name" : "Noelle Williams",
               "url" : "http://www.ravelry.com/designers/noelle-williams"
            }
         },
         "notes" : null,
         "started" : "2011-01-01"
      }
   ]
}
