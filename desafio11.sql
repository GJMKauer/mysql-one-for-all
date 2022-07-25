SELECT 
    song_name AS nome_musica,
    MAX(CASE
        WHEN
            song_name LIKE '%Streets'
        THEN
            REPLACE(song_name,
                'Streets',
                'Code Review')
        WHEN song_name LIKE '%Her Own' THEN REPLACE(song_name, 'Her Own', 'Trybe')
        WHEN
            song_name LIKE '%Inner Fire'
        THEN
            REPLACE(song_name,
                'Inner Fire',
                'Project')
        WHEN song_name LIKE '%Silly' THEN REPLACE(song_name, 'Silly', 'Nice')
        WHEN
            song_name LIKE '%Circus'
        THEN
            REPLACE(song_name,
                'Circus',
                'Pull Request')
    END) AS novo_nome
FROM
    SpotifyClone.songs
WHERE
    song_name IN ('Dance With Her Own' , 'Let\'s Be Silly',
        'Magic Circus',
        'Troubles Of My Inner Fire',
        'Without My Streets')
GROUP BY song_name
ORDER BY novo_nome;