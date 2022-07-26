SELECT 
    u.user_name AS usuario,
    COUNT(DISTINCT s.song_name) AS qtde_musicas_ouvidas,
    CAST(SUM(s.song_duration / 60) AS DECIMAL (4 , 2 )) AS total_minutos
    -- GK
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.reproduction_history AS rh ON u.user_id = rh.user_id
        INNER JOIN
    SpotifyClone.songs AS s ON rh.song_id = s.song_id
GROUP BY u.user_id
ORDER BY 1 ASC;