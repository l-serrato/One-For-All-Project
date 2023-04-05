SELECT MIN(valor) as faturamento_minimo, MAX(valor) as faturamento_maximo, ROUND(AVG(valor), 2) as faturamento_medio, ROUND(SUM(valor), 2) as faturamento_total FROM plano_tabela;