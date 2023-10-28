SELECT CONCAT(u.first_name, ' ', u.last_name) AS pessoa_usuaria, COUNT(ph.user_id) AS musicas_ouvidas, ROUND(SUM(s.length_seconds / 60), 2) AS total_minutos
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.play_history AS ph ON u.user_id = ph.user_id
INNER JOIN SpotifyClone.song AS s ON ph.song_id = s.song_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;