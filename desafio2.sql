SELECT 
    COUNT(song.song_id) AS cancoes,
    COUNT(distinct album.album_id) AS albuns,
	COUNT(distinct artist.artist_id) AS artistas
FROM  SpotifyClone.song AS song
INNER JOIN SpotifyClone.album AS album ON song.album_id = album.album_id
INNER JOIN SpotifyClone.artist AS artist ON album.artist_id = artist.artist_id;