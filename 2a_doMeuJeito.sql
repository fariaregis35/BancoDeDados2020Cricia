/*Query do meu jeito, mais facil o entendimento */
#select * from registro_deposito 
#select * from registro_saque


SELECT cc.cod_conta, c.nome , c.telefone, c.email, concat (month(s.dt_saque),'-', year(s.dt_saque)) as Mes_Ano 
FROM conta_corrente as cc 
inner join cliente c on cc.cod_cliente = c.cod_cliente
left join registro_saque as s on s.cod_conta =cc.cod_conta
where  s.Dt_saque BETWEEN DATE_SUB(CURRENT_DATE(), interval 6 month)  and s.valor_saque is null
union
SELECT cc.cod_conta, c.nome , c.telefone, c.email, concat (month(d.dt_deposito),'-', year(d.dt_deposito)) as Mes_Ano 
FROM conta_corrente as cc 
inner join cliente c on cc.cod_cliente = c.cod_cliente
left join registro_deposito as d on d.cod_conta =cc.cod_conta
where  d.Dt_deposito BETWEEN DATE_SUB(CURRENT_DATE(), interval 6 month)  and d.valor_deposito is null