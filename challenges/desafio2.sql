SELECT COUNT(DISTINCT cancoes.titulo) AS cancoes, COUNT(DISTINCT artistas.nome) AS artistas, COUNT(DISTINCT albuns.album) AS albuns
FROM musica_tabela AS cancoes
INNER JOIN artista_tabela AS artistas
ON cancoes.artista_id = artistas.artista_id
INNER JOIN album_tabela AS albuns
ON albuns.artista_id = artistas.artista_id;