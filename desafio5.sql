SELECT m.name AS cancao, COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.music as m
INNER JOIN SpotifyClone.history as h
ON m.music_id = h.music_id
GROUP BY m.name
ORDER BY reproducoes DESC, m.name
LIMIT 2;