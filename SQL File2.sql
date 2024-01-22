update product_color_tb
set product_color_name = 'Green' # 이렇게 하면 모두 Green으로 바꾼다.
# navy녀석을 green으로 덮어쓴다

where
	product_color_name = 'Navy'; # navy를 찾는다


update product_color_tb
set product_color_kor = '블랙'
where 
	product_color_name = 'Black';
    
    update product_color_tb
set product_color_kor = '화이트'
where 
	product_color_name = 'White';
    
    update product_color_tb
set product_color_kor = '그린'
where 
	product_color_name = 'Green';
    
update product_color_tb
set 
  product_color_kor = case 
    when product_color_name = 'Black' then '블랙' 
    when product_color_name = 'White' then '화이트'
    when product_color_name = 'Green' then '그린'
	end; # case로 if로 중괄호 열었다 # end로 중괄호 닫았다.
  # 중요! when then이 하나의 if else이다.
  
# concat 문자열로 합쳐준다.
# 조인하면 하나의 테이블이라고 생각하면 된다.?? 

delete  # delete는 조인이 안된다.
from
	product_register_tb
    left outer join product_color_tb pct on (pct.product_color_id = prt.product_color_id)
where # delete할때 제일 중요한 구문 # 보통 키값으로 삭제한다.
	product_color_name = 'Black'
	# -> 서브쿼리를 쓴다

delete
(select
	product_color_id
from
	product_color_tb
where
	product_color_id in (select   #서브쿼리는 어디에서나 쓰일 수 있다. address_db# = 대신 in 을 쓰면 1,2를 지워라
							product_color_id  
						from
						product_color_tbproduct_color_tbproduct_color_tb	product_color_tb
						where
							product_color_name = 'Blck');

select
	*
from
	product_register_view;
    
    

	