# like
select
	*
from 
	product_tb
where
	product_name like  'BASIC %?SSY TEE'
    ;
    
select
	*
from 
	product_tb
where
	product_name in('NO.4 TEE', 'PROPERTY OF TEE')
    ;
-- no 나 property 로 시작되는것도 

select
	*
from
	product_tb
where
	product_name like 'NO%' 
    or product_name like 'PRO%'
    ;
    