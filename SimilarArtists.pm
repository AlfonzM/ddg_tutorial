package DDG::Spice::SimilarArtists;
# ABSTRACT: Find sites that are similar to a given site

use DDG::Spice;

primary_example_queries "similar artists to the beatles";
description "Search for similar artists";
name "SimilarArtists search";
source "SimilarArtists";
code_url "http://github.com/alfonzm";
# icon_url "/i/www.similarsitesearch.com.ico";
category "entertainment";
# topics "everyday", "special_interest";
attribution github => ['https://github.com/alfonzm', 'AlfonzM'];

triggers startend => "similar artists", "similar artists to", "similar bands to", "artists like", "bands like";


spice to => 'http://ws.audioscrobbler.com/2.0/?method=artist.getsimilar&artist=$1&api_key=83c01a2b194d5f663eb164585c147d8d&format=json';
spice wrap_jsonp_callback => 1;

handle remainder => sub {
    return $_ if $_;
    return;
};

1;