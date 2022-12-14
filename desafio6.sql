SELECT 
    MIN(p.plan_value) AS faturamento_minimo,
    MAX(p.plan_value) AS faturamento_maximo,
    CAST(AVG(plan_value) AS DECIMAL (5 , 2 )) AS faturamento_medio,
    SUM(p.plan_value) AS faturamento_total
    -- GK
FROM
    SpotifyClone.plans AS p
        INNER JOIN
    SpotifyClone.users AS u ON p.plan_id = u.plan_id;