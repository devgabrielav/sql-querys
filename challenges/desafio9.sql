SELECT COUNT(ph.play_date) AS musicas_no_historico
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.user AS u ON ph.user_id = u.user_id
WHERE CONCAT(u.first_name, ' ', u.last_name) = 'Barbara Liskov';