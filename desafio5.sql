SELECT 
	song.song_name AS cancao,
    count(repro.song_id) AS reproducoes
    FROM SpotifyClone.song AS song
    INNER JOIN SpotifyClone.reproduction_history AS repro ON repro.song_id = song.song_id
GROUP BY song.song_name
ORDER BY reproducoes DESC, song.song_name ASC LIMIT 2;