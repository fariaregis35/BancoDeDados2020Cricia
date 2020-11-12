
select c.nome,cc.cod_conta,concat ('Saques: ',cast(sum(s.valor_saque)as char)) as operacao from cliente c 
inner join conta_corrente cc on cc.cod_cliente = c.cod_cliente 
inner join registro_saque as s on s.cod_conta = cc.cod_conta 
group by s.cod_conta
union
select c.nome,cc.cod_conta,concat ('Depositos: ',cast(sum(d.valor_deposito)as char)) as operacao from cliente c 
inner join conta_corrente cc on cc.cod_cliente = c.cod_cliente 
inner join registro_deposito as d on d.cod_conta = cc.cod_conta 
group by d.cod_conta
