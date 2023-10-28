SELECT a.artist_name AS artista, alb.album_name AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS alb ON a.artist_id = alb.artist_id
WHERE a.artist_name = 'Elis Regina'
ORDER BY album;