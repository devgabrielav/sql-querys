SELECT ROUND(MIN(p.plan_price), 2) AS faturamento_minimo,
ROUND(MAX(p.plan_price), 2) AS faturamento_maximo, ROUND(AVG(p.plan_price), 2) AS faturamento_medio,
ROUND(SUM(p.plan_price), 2) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u
WHERE u.plan_type = p.plan_id;