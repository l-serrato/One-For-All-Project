SELECT COUNT(reps.cancao_id) as musicas_no_historico
FROM reprod_tabela AS reps
INNER JOIN usuario_tabela AS pessoa
ON reps.usuario_id = pessoa.pessoa_usuaria_id
WHERE pessoa.nome_pessoa_usuaria = 'Barbara Liskov';