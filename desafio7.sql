SELECT DISTINCT
    ar.artist_name AS artista,
    al.album_name AS album,
    COUNT(DISTINCT fl.user_id) AS seguidores
    -- GK
FROM
    SpotifyClone.artists AS ar
        INNER JOIN
    SpotifyClone.albums AS al ON ar.artist_id = al.artist_id
        INNER JOIN
    SpotifyClone.follow_list AS fl ON ar.artist_id = fl.artist_id
GROUP BY ar.artist_id , al.album_id
ORDER BY seguidores DESC , artista ASC , album ASC;