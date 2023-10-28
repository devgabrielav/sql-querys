SELECT a.artist_name AS artista, alb.album_name AS album, COUNT(uf.artist_id) AS pessoas_seguidoras
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS alb ON a.artist_id = alb.artist_id
INNER JOIN SpotifyClone.user_follows AS uf ON a.artist_id = uf.artist_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;