select 
	user_name as usuario,
    count(repro.user_id) as qt_de_musicas_ouvidas,
    round(sum(song.song_duration) /60,2) as total_minutos
from SpotifyClone.user as user
	INNER JOIN SpotifyClone.reproduction_history AS repro ON user.user_id = repro.user_id
    INNER JOIN SpotifyClone.song AS song ON song.song_id = repro.song_id
    GROUP BY user_name
    ORDER BY user_name;