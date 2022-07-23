SELECT 
    COUNT(DISTINCT s.song_name) AS cancoes,
    COUNT(DISTINCT a.artist_name) AS artistas,
    COUNT(DISTINCT al.album_name) AS albuns
FROM
    SpotifyClone.songs AS s
        INNER JOIN
    SpotifyClone.artists AS a ON s.artist_id = a.artist_id
        INNER JOIN
    SpotifyClone.albums AS al ON a.artist_id = al.artist_id;