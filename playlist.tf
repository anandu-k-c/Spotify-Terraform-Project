resource "spotify_playlist" "hiphop" {
    name = "My fav Bollywood "
    tracks = [ "1QZRCi2Z1DQQaR6bGAzhtN" ]
  
}

data "spotify_search_track" "Travis-Scott" {
    artist = "Travis Scott" 
}

resource "spotify_playlist" "name" {
    name = "World of Hip-Hop"
    tracks = [data.spotify_search_track.Travis-Scott.tracks[0].id,
    data.spotify_search_track.Travis-Scott.tracks[1].id,
    data.spotify_search_track.Travis-Scott.tracks[2].id,
    data.spotify_search_track.Travis-Scott.tracks[3].id,
    data.spotify_search_track.Travis-Scott.tracks[5].id,
    data.spotify_search_track.Travis-Scott.tracks[6].id,
    data.spotify_search_track.Travis-Scott.tracks[7].id]
  
}