select * from student_tb;
# *의 의미는 전체 컬럼

select          # slelect문 짤 때는 이렇게 하기
	student_id, 
	name,
    age
from 
	student_tb 
where 
	not name = '김준일'    # not을 앞에다가 붙여준다.
	or name = '김준이';
# student_tb으로부터
# 데이터는 위치가 있기 때문에 where.
# 순서 : from -> where(like~ 한줄씩 잘라낸걸 찾는다) -> select

select
	*
from
	student_tb
where
	name in ('김준일', '김준이');   # in 안에 내용들이 포함되어 있으면~ -> or 같이 쓸 수 있다.

select
	*
from
	student_tb
where
	student_id in (1,2,3); #1,2,3인 녀석들 뽑아내라
    
truncate table student_tb; #삭제

select
	*
from
	student_tb
where
	age between 20 and 29; #이상 이하로 잡힌다.ex)보통 숫자값, 날짜
    #age > 19
    #and age < 30;

select
	*
from
	student_tb
where
	name like '%원%'; #문자열 자르기 => 서브 스트링이라고 한다. but like '김%';이 있어서 안 쓴다. 
			  #'김__' 글자 수 맞춰야할 경우 언더바를 쓴다. 글자수 상관없으면 %로 간다. 
              # '%원%' : 이 글자만 포함되면 된다.
              # like에 대한 설명이었다.

select
	*
from
	student_tb
where
	name like '%도%'
    or name like '%원';
    # 중간에 도자가 있으면 출력 원으로 끝나는 사람  김도균 김도훈 이평원 심재원
	#in과 like는 같이 쓸 수 없다.

#집계(그룹화)
select
	#name,
	address,
	count(*) as address_count # as -> column 명이 바뀐다.
from
	student_tb
# db에서 개수를 따지면 1줄이다. 
group by
	#name,
	address
# from -> group by(그룹화 시켜놓고 select가 뽑는 개념) -> having -> select
# 1from 2where 3group by 4having 5select 6order by 
having  # where처럼 조건식이다. but group 묶고나서 조건을 준다. group을 묶기 전에 조건을 줘야하면
		# where을 쓰면 된다.
	address_count >= 2 # address_count => count(*)
order by # 정렬 # 오름차순
	address_count desc, # 내림차순 ex) address_count desc; 
    address desc; # 숫자가 먼저 정렬된 것 안에서 주소 내림차순하는 순서이다.

select
	1,
    2,
    3;
    
select
	1 as a, # 알리아스?라고 읽는다 영어 As X
    2 as b,
    3 as c;
    
# 색상별로 나타내기
select 
	product_color,
    count(*) as product_color_count # count는 우리가 만든 거기 때문에 이름을 바꿔준다.
from
	product_tb
group by
	product_color; #묶었을 땐 제일 위에 있는 데이터만 나온다.

select
	product_size, 
    count(product_size) as product_size_count
from
	product_tb
group by 
	product_size;




select
	prt.product_register_id,
    prt.product_id,
    pt.product_name,
    pt.product_price,
    prt.product_size_id,
    pst.product_size_name,
    prt.product_color_id,
    pct.product_color_name
from
	product_register_tb prt # 마스터 테이블
    left outer join product_tb pt on(pt.product_id = prt.product_id)
	
    left outer join product_size_tb pst on(pst.product_size_id = prt.product_size_id)
	# 조건식 검사를 할 때 register가 앞에 오지 않게 한다. 슬레이브가 앞에 온다. #사이즈가 앞에 오면 뒤에 사이즈가 앞에 온다.
    # 알리아스 생략 가능(테이블에서만!!!) -> 
	
    left outer join product_color_tb pct on(pct.product_color_id = pct.product_color_id); # 합치는 방법 # 조건이 참일때만 붙여라 # 슬레이브 테이블
    # 곱하기라고 생각 
    #(1=1) -> true 
    # 1. on 안에 들어가는게 조건이다.
    

select
	product_size_id,
    product_size_name,
    count(product_size_id) as product_size_count
from
	product_register_view
group by
	product_size_id > 3 #??? 
    #produc_size_name;
    # size가 라지 이상인 것만 뽑아보기