SELECT cancao.titulo, COUNT(reproducoes.cancao_id) AS contagem
FROM musica_tabela AS cancao
INNER JOIN reprod_tabela AS reproducoes
ON cancao.cancao_id = reproducoes.cancao_id
LIMIT 2 ORDER BY contagem DESC, cancao.titulo;