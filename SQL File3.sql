
insert into book_tb
select                          
	0,
    tbt.book_name,
    at.author_id,
    pt.publisher_id      # 데이터를 만들어놓고 정규화를 하기?
from
	temp_book_tb tbt
    left outer join author_tb   at on(at.author_name = tbt.author) # author 테이블 temp 테이블에 auth_name이 다 있다.
    left outer join publisher_tb pt on(pt.publisher_name = tbt.publisher)
# 3개를 하나로 봤을때 같은게 있으면 그룹으로 묶어라
group by
	tbt.book_name,
    at.author_id,
    pt.publisher_id
order by     # 중복이 있으니까 정규화 (같은 것끼리 묶어버리기)
	book_name,
    author_id,
    publisher_id,         
    


