(function (env) {
    "use strict";
    env.ddg_spice_similar_artists = function(api_result){

        if (api_result.error) {
            return Spice.failed('similar_artists');
        }

        Spice.add({
            id: "similar_artists",
            name: "Similar Artists",
            data: api_result,
            meta: {
                sourceName: "Last.fm",
                sourceUrl: "last.fm"
            },
            templates: {
                group: 'base',
                options:{
                    content: Spice.similar_artists.content,
                    moreAt: true
                }
            }        });
    };
}(this));