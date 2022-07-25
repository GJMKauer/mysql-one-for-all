SELECT DISTINCT u.user_name as usuario,
CASE
	WHEN MAX(YEAR(reproduction_date)) = 2021 THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
END AS condicao_usuario FROM SpotifyClone.users as u
INNER JOIN SpotifyClone.reproduction_history as rh
ON u.user_id = rh.user_id
GROUP BY u.user_name
ORDER BY usuario;