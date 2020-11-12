select c.nome , cc.cod_conta, sum(s.valor_saque) as saques from cliente c inner join 
conta_corrente cc on cc.cod_cliente = c.cod_cliente inner join 
registro_saque s on s.cod_conta = cc.cod_conta
where s.dt_saque between '2020-08-01 00:00:00' and '2020-08-31 23:59:59' and s.valor_saque >1000
group by c.nome 

