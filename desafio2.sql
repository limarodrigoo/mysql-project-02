SELECT COUNT(m.name) AS cancoes, COUNT(DISTINCT a.artist_id) AS artistas, COUNT(DISTINCT m.album_id) AS albuns
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.album as a
ON m.album_id = a.album_id;