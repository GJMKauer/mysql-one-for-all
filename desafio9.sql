SELECT 
    COUNT(u.user_name) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.reproduction_history AS rh ON u.user_id = rh.user_id
WHERE
    u.user_name = 'Bill'
GROUP BY u.user_id;