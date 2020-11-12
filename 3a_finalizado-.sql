/* 
a) Liste os dados dos clientes que realizaram o maior valor de depósito no mês corrente.
Obs.: Eliminar possíveis repetições.
*/

select c.nome , cc.cod_conta , max(d.valor_deposito) Maior_Deposito from cliente c 
inner join conta_corrente cc on cc.cod_cliente = c.cod_cliente 
inner join registro_deposito d on d.cod_conta = cc.cod_conta
where month(d.dt_deposito) 

/*A funcao max lista apenas o maior cliente, como fazer para trazer mais de um */ 