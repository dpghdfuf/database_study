select # from에 사용하는 서브 쿼리
	*
from
	(select
		row_number() over(order by author_id desc) as num, # 3 새로운 열이나 OO이 추가됐을경우 알리아스를 달아준다.
		author_id,
        author_name
    from
		author_tb # 1
	where
        author_name like '글%') at # 2 
where
	at.num > 10; # 4
    
select 
	0,
    count(*)
from 
	publisher_tb;
where  # ?? 필기 덜됨
	left outer join publisher_count pc on (publisher_tb = )
    
    
    
select 
	*,
    67
from
	publisher_tb;

# 1번째 방법
select
	*,
	(select   # 컬럼 한 줄 한 줄 할때마다 select
			  # 서브쿼리는 select X
		count(*)
	from
		publisher_tb) as total_count
from
	publisher_tb;
    
# 2번쨰 방법
select
	count(*)
from
	publisher_tb; 
    
select
	*   
from      # 서브쿼리보단 차라리 조인을 써라
	publisher_tb pt
    left outer join(select count(*) as total_count from publisher_tb) pt2 on(1=1);
    # 조건이 참이니 다 붙여버린다.

# 1 데이터가 작을 때는 이것이 더 낫다. 조인은 테이블 합쳐야 하기 때문. 거르고 나서 합치는 거고?
select
	*
from
	book_tb
where
	publisher_id in (select publisher_id from publisher_tb where publisher_name like"아%");
  
# 2  합치고 나서 거르는거다?
select
	*
from
	book_tb bt
    left outer join publisher_tb pt on(pt.publisher_id = bt.pubisher_id)
where
	pt.publisher_name like '아%';
    
select @@profiling;   
show profiles;           # 쿼리 실행속도. 결과를 보고 내가 쓸 쿼리를 선택한다.
set profiling = 1;

# 여기까지 하면 기본적인 DML 다 했다. DML이 가장 중요
