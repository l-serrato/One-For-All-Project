SELECT cancao.titulo as cancao, COUNT(reproducoes.cancao_id) AS reproducoes
FROM musica_tabela AS cancao
INNER JOIN reprod_tabela AS reproducoes
ON cancao.cancao_id = reproducoes.cancao_id
GROUP BY cancao.titulo ORDER BY reproducoes DESC, cancao.titulo LIMIT 2;