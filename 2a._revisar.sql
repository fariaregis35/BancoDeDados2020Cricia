/*Atende os requisitos do exercicio porem gostaria de melhorar essa query 
poderiamos verificar como melhorar ?*/

SELECT cc.cod_conta, c.nome , c.telefone, c.email, (s.cod_conta) as Movimentacoes,month(s.dt_saque) as Meses 
FROM conta_corrente as cc 
inner join cliente c on cc.cod_cliente = c.cod_cliente
left join registro_saque as s on s.cod_conta =cc.cod_conta
where month(s.dt_saque) is null
union
SELECT cc.cod_conta, c.nome , c.telefone, c.email, (d.cod_conta) as Movimentacoes,month(d.dt_deposito) as Meses 
FROM conta_corrente as cc 
inner join cliente c on cc.cod_cliente = c.cod_cliente
left join registro_deposito as d on d.cod_conta =cc.cod_conta
where month(d.dt_deposito) is null

