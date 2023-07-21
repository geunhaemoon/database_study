
/*
	1. 검색창에 상구라고 검색했을때 해당 user에 등록된 모든 주소를 조회하시오.
    2. 상품별 총 판매 수량, 판매 총액을 조회하시오.  (서브쿼리 써두됨)
    3. 카테고리별 등록된 상품이 몇개씩 등록되어 있는지 조회하시오.
    4. addredss_tv sido 컬럼을 참조하여 각 지역별로 판매된 상춤의 총액을 조회하시오.
    5. 상품명이 '나이키' 가 포함된 제품이 몇개가 판매되었고 판매된 총액은 얼마인지 조회하시오.
    
*/

#1
select
	*
from
	user_tb
    
where
	name ='상구';
    
#2 상품별 총 판매 수량, 판매 총액을 조회하시오.  (서브쿼리 써두됨)
select
	product_name,
    sum(product_price) as total_product_price,
    count(product_name) as total_product_count
from
	product_tb
group by
	product_name;

#3 카테고리별 등록된 상품이 몇개씩 등록되어 있는지 조회하시오.

select
	category_id,
    count(category_id) as total_category
from
	product_tb
group by
	category_id;
    
#4 addredss_tv sido 컬럼을 참조하여 각 지역별로 판매된 상춤의 총액을 조회하시오.
select
	*
from
	address_tb
    
    ;



#5 상품명이 '나이키' 가 포함된 제품이 몇개가 판매되었고 판매된 총액은 얼마인지 조회하시오.

select
	count(nike.product_name) as nike_count,
	sum(nike.product_price) as nike_total_price
from
	product_tb
(group by
	product_name like '%나이키%' ) as nike
;


    
    
	