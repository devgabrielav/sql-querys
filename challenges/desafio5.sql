SELECT s.song_name AS cancao, COUNT(ph.song_id) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.play_history AS ph ON s.song_id = ph.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;