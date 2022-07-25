SELECT 
    ar.artist_name AS artista, al.album_name AS album
FROM
    SpotifyClone.artists AS ar
        INNER JOIN
    SpotifyClone.albums AS al ON ar.artist_id = al.artist_id
WHERE
    ar.artist_name = 'Walter Phoenix';