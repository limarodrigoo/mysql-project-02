SELECT 
    MIN(price) AS faturamento_minimo,
    MAX(price) AS faturamento_maximo,
    ROUND(AVG(price), 2) AS faturamento_medio,
    SUM(price) AS faturamento_total
    
FROM
    SpotifyClone.plans as p
INNER JOIN 
	SpotifyClone.user as u
ON 
	p.plan_id = u.plan_id;