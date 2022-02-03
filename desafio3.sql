SELECT u.user_name as usuario, COUNT(h.user_id) as qtde_musicas_ouvidas, ROUND((SUM(m.seconds)/60), 2) as total_minutos
FROM SpotifyClone.user as u
INNER JOIN SpotifyClone.history as h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.music as m
ON h.music_id = m.music_id
GROUP BY u.user_name
ORDER BY u.user_name;