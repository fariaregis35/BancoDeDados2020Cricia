/*d) Listar o nome do cliente, cpf e número da conta de todos os clientes que são titulares de
contas com saldo superior a R$ 100.000,00 .

Verificar com o professor se decimal formata-se ou expressa como string entre aspas ?

*/
select c.nome, c.CPF, cc.cod_conta, cc.saldo  from cliente c 
inner join  conta_corrente cc on cc.cod_cliente = c.cod_cliente
where cc.saldo > '1000.000,00' 
