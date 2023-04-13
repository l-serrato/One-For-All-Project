SELECT album.album as album, COUNT(favs.musica_id) as favoritadas
FROM album_tabela AS album
INNER JOIN fav_relacao AS favs
ON artista.artista_id = album.artista_id
INNER JOIN seguindo_tabela AS pessoas_seguidoras
ON artista.musica_id = favs.musica_id
GROUP BY artista.nome, album.album ORDER BY pessoas_seguidoras DESC, artista.nome, album.album;