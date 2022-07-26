SELECT 
    s.song_name AS nome, COUNT(rh.song_id) AS reproducoes
    -- GK
FROM
    SpotifyClone.songs AS s
        INNER JOIN
    SpotifyClone.reproduction_history AS rh ON s.song_id = rh.song_id
        INNER JOIN
    SpotifyClone.users AS u ON u.user_id = rh.user_id
WHERE
    u.plan_id = 1 OR u.plan_id = 4
GROUP BY s.song_name
ORDER BY reproducoes DESC , nome ASC;