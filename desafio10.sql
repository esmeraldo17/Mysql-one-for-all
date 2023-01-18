SELECT
	song_name AS nome,
    COUNT(repro.song_id) AS reproducoes
    FROM SpotifyClone.song AS song
    INNER JOIN SpotifyClone.reproduction_history AS repro ON repro.song_id = song.song_id
    INNER JOIN SpotifyClone.user AS user ON repro.user_id = user.user_id
	INNER JOIN SpotifyClone.plan AS plan ON user.plan_id = plan.plan_id
	WHERE plan.plan_name IN ('gratuito','pessoal')
    GROUP BY nome ORDER BY nome;