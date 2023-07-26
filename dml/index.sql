insert into product_tb
values 
	(2023001, '상품1'),
	(2023002, '상품2'),
	(2023003, '상품3'),
	(2023004, '상품4'),
	(2023005, '상품5');
    

create view product_view as
select * from product_tb;

create index product_code_index on product_tb(product_code);

show index from product_tb;

show index from user_tb;

 -- 만들어진 뷰를 조회할때 사용		/ where 이후로는 조건 
show full tables in study3 where table_type like 'VIEW';
show full tables in study3 where table_type = 'VIEW';


show full tables in study3;
-- 해당 데이터에 포함된 테이블들을 조회할때 사용
show tables;

