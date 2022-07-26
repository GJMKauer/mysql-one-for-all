SELECT 
    s.song_name AS cancao, COUNT(rh.song_id) AS reproducoes
    -- GK
FROM
    SpotifyClone.songs AS s
        INNER JOIN
    SpotifyClone.reproduction_history AS rh ON s.song_id = rh.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;