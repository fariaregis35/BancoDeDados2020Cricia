/*
Professora, embora o codigo atenda o solicitado, não gostei desse codigo. Deve haver um jeito mais limpo de fazer esse if 

*/

select cc.cod_conta,year(s.dt_saque) as ano, month(s.dt_saque) as mes ,
if (concat ('Saques: ',cast(sum(s.valor_saque)as char))  is null, 'Sem registro de saque',concat ('Saques: ',cast(sum(s.valor_saque)as char))) as operacao
from cliente c 
left join conta_corrente cc on cc.cod_cliente = c.cod_cliente 
left join registro_saque as s on s.cod_conta = cc.cod_conta 
group by s.cod_conta
union all
select cc.cod_conta,year(d.dt_deposito) as ano, month(d.dt_deposito) as mes ,
if (concat ('Saques: ',cast(sum(d.valor_deposito)as char))  is null, 'Sem registro de Depositos',concat ('Depositos: ',cast(sum(d.valor_deposito)as char))) as operacao
from cliente c 
left join conta_corrente cc on cc.cod_cliente = c.cod_cliente 
left join registro_deposito as d on d.cod_conta = cc.cod_conta 
group by d.cod_conta