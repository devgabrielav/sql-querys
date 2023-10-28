SELECT CONCAT(u.first_name, ' ', u.last_name) AS pessoa_usuaria, IF(MAX(YEAR(ph.play_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.play_history AS ph ON u.user_id = ph.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;