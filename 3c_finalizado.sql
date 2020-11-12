/*c) Listar as informações dos clientes que efetuaram 
abertura de contas no mês de julho ou
agosto.*/

/*Opçao 2*/
select c.nome , cc.cod_conta, cc.saldo,month(cc.dt_hora_abertura) as Mes 
from cliente c inner join 
conta_corrente cc on cc.cod_cliente = c.cod_cliente 
where  month(cc.dt_hora_abertura)in (7,8);

/*
Cricia entendo que o exercicio pede para fazer com SubQuery que no caso seria o parametro passador para o where 
mas aqui nesse exemplo, seria correto utilizar subquery ?
*/

