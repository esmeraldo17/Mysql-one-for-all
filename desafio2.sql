SELECT 
    COUNT(song.song_id) AS cancoes,
	COUNT(distinct artist.artist_id) AS artistas,
    COUNT(distinct album.album_id) AS albuns
FROM song AS song
INNER JOIN album AS album ON song.album_id = album.album_id
INNER JOIN artist AS artist ON album.artist_id = artist.artist_id;