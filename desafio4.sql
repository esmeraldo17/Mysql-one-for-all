SELECT 
	user.user_name usuario,
	IF(YEAR(MAX(repro.reproduction_date)) >= 2021,
    'Usuário ativo',
    'Usuário inativo') AS status_usuario
FROM SpotifyClone.reproduction_history AS repro
INNER JOIN SpotifyClone.user AS user ON user.user_id = repro.user_id
GROUP BY user.user_name
ORDER BY user.user_name;