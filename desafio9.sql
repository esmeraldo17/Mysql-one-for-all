SELECT 
	COUNT(user.user_id) AS quantidade_musicas_no_historico
    FROM SpotifyClone.reproduction_history AS repro
    INNER JOIN SpotifyClone.user AS user ON user.user_id = repro.user_id
    WHERE user.user_name = 'Barbara Liskov';