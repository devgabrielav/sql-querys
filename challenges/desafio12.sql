SELECT art.artist_name AS artista, 
  CASE
    WHEN COUNT(fav.song_id) >= 5 THEN 'A'
    WHEN COUNT(fav.song_id) = 3 OR COUNT(fav.song_id) = 4 THEN 'B'
    WHEN COUNT(fav.song_id) = 1 OR COUNT(fav.song_id) = 2 THEN 'C'
    ELSE '-'
  END AS ranking
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.album AS alb ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.song AS s ON s.album_id = alb.album_id
LEFT JOIN SpotifyClone.fav_songs AS fav ON fav.song_id = s.song_id
GROUP BY artista
ORDER BY COUNT(fav.song_id) DESC, artista;