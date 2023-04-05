SELECT artista.nome as artista, album.album as album, COUNT(pessoas_seguidoras.user_id) as pessoas_seguidoras
FROM artista_tabela AS artista
INNER JOIN album_tabela AS album
ON artista.artista_id = album.artista_id
INNER JOIN seguindo_tabela AS pessoas_seguidoras
ON artista.artista_id = pessoas_seguidoras.artista_id
GROUP BY artista.nome, album.album ORDER BY pessoas_seguidoras DESC, artista.nome, album.album;