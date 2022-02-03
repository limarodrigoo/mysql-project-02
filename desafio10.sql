SELECT 
    m.name AS nome, COUNT(h.user_id) AS reproducoes
FROM
    SpotifyClone.music AS m
        INNER JOIN
    SpotifyClone.history AS h ON h.music_id = m.music_id
        INNER JOIN
    SpotifyClone.user AS u ON h.user_id = u.user_id
        INNER JOIN
    SpotifyClone.plans AS p ON u.plan_id = p.plan_id
WHERE
    p.name IN ('pessoal' , 'gratuito')
GROUP BY m.music_id
ORDER BY m.name
;