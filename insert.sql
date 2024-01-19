# 쿼리는 마치 메모장
use `db_study`;


insert into student_tb(student_id, name, age, address) values(0, '김준일', '31','부산 동래구');
# 1.번 방법
# auto increment 설정하고 0이라는 빈값을 넣어주면 student_id 1에서 1씩 증가한 값으로 들어간다.
# insert into 어디에 추가(db_study 생략가능), 괄호 안에 각각의 컬럼을 적어준다
insert into student_tb(address, name, age, student_id) values('부산 동래구', '김준이', '31',1);
# 2.번 방법
# 동시에 primary 2개를 잡으면 합쳐서 생각한다 2개가 합쳐서 조합된 키를 -> 컴포지드 키라고 한다
# 1번의 김준일이랑 1번의 김준이랑 다르다
insert into student_tb(name) values('김준이'); 
# 3.번 방법 insert into student_tb(name, address) values('김준이', null);
insert into student_tb values(0, '김준삼', null, null); #컬럼의 순서를 지우고 0으로 값을 순서대로 넣으면 인식한다.
# 4번 방법
insert into student_tb values(0, '김준삼', null, null), (0, '김준사', null, null); 
#쉼표로 추가 데이터 삽입 가능 

insert into student_tb #줄 바꿈이 중요하다(-> 정리하기, + TAB 넣기)
    (student_id, name, age, address)               
values
	(0, '김준삼', null, null),
	(0, '김준사', null, null);
    
/* 
	10명의 학생 정보 추가
    김도균 27 부산 금정구
    김도훈 25 부산 부산진구
    김범수 33 부산 금정구
    김상현 26 부산 남구
    이재영 26 부산 서구
    이정찬 29 부산 부산진구
    이지언 26 부산 동래구
    이편원 30 경상남도 양산시
    전주환 30 부산 부산진구
    심재원 29 부산 남구
*/
insert into student_tb
	(student_id, name, age, address)
values
	(0,'김도균', 27, '부산 금정구'),	
	(0,'김도훈', 25, '부산 부산진구'),	
	(0,'김범수', 33, '부산 금정구'),	
	(0,'김상현', 26, '부산 남구'),	
	(0,'이재영', 26, '부산 서구'),	
	(0,'이정찬', 29, '부산 부산진구'),	
	(0,'이지언', 26, '부산 동래구'),	
	(0,'이평원', 30, '경상남도 양산시'),	
	(0,'전주환', 30, '부산 부산진구'),	
	(0,'심재원', 29, '부산 남구');
    
    
insert into product_tb
	(product_id, product_name, product_size, product_color, product_price)
     #(product_name, product_size, product_color, product_price)
values
	# 0을 빼도 auto increment 자동 된다.
	(0, '모헤어 브이넥 앙고라 니트', 'S', 'black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'M', 'black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'L', 'black', 37400),
	(0, '모헤어 브이넥 앙고라 니트', 'XL', 'black', 37400),
    (0, '콘테 코듀로이 와이드 벤딩 팬츠', 'S', 'white', 38000 ),
    (0, '콘테 코듀로이 와이드 벤딩 팬츠', 'M', 'white', 38000 ),
    (0, '콘테 코듀로이 와이드 벤딩 팬츠', 'L', 'white', 38000 ),
    (0, '콘테 코듀로이 와이드 벤딩 팬츠', 'XL', 'white', 38000 ),
    (0, '콘테 코듀로이 와이드 벤딩 팬츠', 'XXL', 'white', 38000 ),
	(0, '버티칼 투웨이 골지 양털 집업', 'M', 'navy', '49000' ),
	(0, '버티칼 투웨이 골지 양털 집업', 'L', 'navy', '49000' ),
	(0, '버티칼 투웨이 골지 양털 집업', 'XL', 'navy', '49000' ),
	(0, '버티칼 투웨이 골지 양털 집업', 'XXL', 'navy', '49000' ),
	(0, '반집업 꽈배기 카란이트', 'SS', 'white', 48000),
	(0, '반집업 꽈배기 카란이트', 'S', 'white', 48000),
	(0, '반집업 꽈배기 카란이트', 'M', 'white', 48000),
	(0, '반집업 꽈배기 카란이트', 'L', 'white', 48000),
	(0, '반집업 꽈배기 카란이트', 'XL', 'white', 48000),
    (0, '후드 MA-1 패딩 점퍼', 'S', 'black', 62000),
    (0, '후드 MA-1 패딩 점퍼', 'M', 'black', 62000),
    (0, '후드 MA-1 패딩 점퍼', 'L', 'black', 62000),
    (0, '후드 MA-1 패딩 점퍼', 'XL', 'black', 62000);



    
    
    