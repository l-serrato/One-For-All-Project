SELECT pessoa_usuaria.nome_pessoa_usuaria as pessoa_usuaria, IF(MAX(YEAR(status.data)) >= 2021, 'Ativa', 'Inativa') as status_pessoa_usuaria
FROM usuario_tabela AS pessoa_usuaria
INNER JOIN reprod_tabela AS status
ON pessoa_usuaria.pessoa_usuaria_id = status.usuario_id
GROUP BY pessoa_usuaria.nome_pessoa_usuaria ORDER BY nome_pessoa_usuaria;