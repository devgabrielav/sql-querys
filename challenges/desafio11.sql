SELECT alb.album_name AS album, COUNT(fav.song_id) AS favoritadas
FROM SpotifyClone.album AS alb
INNER JOIN SpotifyClone.song AS s ON s.album_id = alb.album_id
INNER JOIN SpotifyClone.fav_songs AS fav ON fav.song_id = s.song_id
GROUP BY album
ORDER BY favoritadas DESC, album
LIMIT 3;