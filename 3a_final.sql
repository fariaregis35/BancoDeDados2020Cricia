select cod_conta,max(valor_saque)as valores , dt_saque from registro_saque where dt_saque in (month (curdate()));
#ou entao 
select cod_conta,max(valor_saque)as valores, dt_saque from registro_saque where dt_saque between '2020-08-01 00:00:00' and '2020-08-31 23:59:59'




