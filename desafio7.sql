SELECT 
    art.name AS artista,
    alb.name AS album, 
    COUNT(fav.artist_id) AS seguidores
FROM
    SpotifyClone.artist AS art
        INNER JOIN
    SpotifyClone.album AS alb ON art.artist_id = alb.artist_id
        INNER JOIN
    SpotifyClone.favorites AS fav ON art.artist_id = fav.artist_id
GROUP BY alb.name, art.name
ORDER BY seguidores DESC, artista, album
;