SELECT pessoa_usuaria.nome_pessoa_usuaria as pessoa_usuaria, COUNT(musicas_ouvidas.cancao_id) as musicas_ouvidas, ROUND(SUM(total_minutos.duracao_segundos)/60, 2) as total_minutos
FROM usuario_tabela AS pessoa_usuaria
INNER JOIN reprod_tabela AS musicas_ouvidas
ON pessoa_usuaria.pessoa_usuaria_id = musicas_ouvidas.usuario_id
INNER JOIN musica_tabela AS total_minutos
ON musicas_ouvidas.cancao_id = total_minutos.cancao_id
GROUP BY nome_pessoa_usuaria ORDER BY nome_pessoa_usuaria;