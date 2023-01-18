SELECT 
	art.artist_name AS artista,
    album.album_name AS album
    FROM SpotifyClone.artist AS art
    INNER JOIN SpotifyClone.album AS album ON album.artist_id = art.artist_id
    WHERE artist_name = 'Elis Regina'
    ORDER BY artista;