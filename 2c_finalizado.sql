/*
Professora esses if, estão corretos ? 
*/

select s.cod_conta ,c.nome,
	if  (count(s.cod_conta) <1, 0, count(s.cod_conta)) as qtde_saques 
from cliente c 
inner join conta_corrente cc on c.cod_cliente = cc.cod_cliente 
left join registro_saque s on s.cod_conta = cc.cod_conta
group by 
s.cod_conta