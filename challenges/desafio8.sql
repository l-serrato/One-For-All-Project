SELECT artista.nome as artista, album.album as album
FROM artista_tabela AS artista
INNER JOIN album_tabela AS album
ON artista.artista_id = album.artista_id
GROUP BY artista.nome, album.album HAVING artista.nome = 'Elis Regina' ORDER BY album.album, artista.nome, album.album;