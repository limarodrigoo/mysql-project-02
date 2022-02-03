SELECT art.name AS `artista`, alb.name AS album
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb
ON art.artist_id = alb.artist_id
HAVING artista = 'Walter Phoenix';