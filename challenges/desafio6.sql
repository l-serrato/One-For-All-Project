SELECT MIN(planos.valor) as faturamento_minimo, 
MAX(planos.valor) as faturamento_maximo, 
ROUND(AVG(planos.valor), 2) as faturamento_medio, 
ROUND(SUM(planos.valor), 2) as faturamento_total 
FROM plano_tabela as planos
INNER JOIN usuario_tabela as counter ON planos.plano_id = counter.plano;