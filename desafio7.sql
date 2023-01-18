SELECT
	art.artist_name AS artista,
    album.album_name AS album,
    COUNT(art.artist_id) AS seguidores 
    from SpotifyClone.album AS album
    INNER JOIN SpotifyClone.artist AS art ON art.artist_id = album.artist_id
    INNER JOIN SpotifyClone.following AS follow ON follow.artist_id = art.artist_id
    group by album.album_id
    ORDER BY seguidores DESC, artista ASC, album ASC;