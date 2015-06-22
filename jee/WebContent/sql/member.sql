-- 테이블 생성 --
create table MEMBER(
    MEMBERID VARCHAR2(10),
    PASSWORD VARCHAR2(10),
    NAME VARCHAR2(20),
    EMAIL VARCHAR2(80)
); commit;

-- 테이블 삭제 --
drop table member; commit;  

-- 데이터 삽입 (1) -- 
insert into member(memberid, password, name, email)
values('hong', 'hong','홍길동','hong@naver.com'); commit;

-- 데이터 삽입 (2) --
insert into member
values('hong2', 'hong2','홍길동','hong2@naver.com'); commit;

-- 데이터 삽입 (3)  ..널인 값이 있을 경우 
insert into member(memberid, password, name)
values('hong2', 'hong2','홍길동'); commit;

-- 데이터 조회 -- 
select * from member;

-- 데이터 조회 (where 절 사용) 
select * from member
where memberid = 'hong2';

-- 두가지 조건을 가지고 검색
select * from member
where name = '홍길동' and email='hong@naver.com';

-- 같지 않을 때 검색
select * from member
where email is null;

-- null 이 아닌 경우
select * from member
where email is not null;

-- 조건검색 like
select * from member
where name like '홍%';

select * from member
where name like '%길%';

-- 정렬
select * from member
where name like '%길%';
order by name asc;  -- ㄱ, ㄴ, ㄷ.. 오름차순

select * from member
where name like '%길%';
order by name desc;  -- ㅎ, ㅌ, ㅋ.. 내림차순

-- 중복정렬
select * from member
order by name asc, memberid asc

-- 내장된 함수
select count(*) from member;
-- count( )은 인스턴스(row)의 수량을 출력함
-- 그런데 파라미터 자리에 * count(*) 이 오면
-- 전체 개수를 리턴

-- 데이터 수정
update member
set name = '최길동'
where memberid = 'hong' and email is null;
commit;

update member
set memberid='choi', password='choi'
where name='최길동';
commit;

-- 테이블 삭제 drop 이고  /   데이터 삭제 delete
-- 차이는 클래스를 제거하든지 인스턴스를 제거하는 차이
delete from member 
where email is null;
commit;