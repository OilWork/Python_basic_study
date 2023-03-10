-- database 생성: test_db
create database test_db;
-- test_db를 사용
use test_db;


/*
테이블: 회원 (member)
속성
이름      	 타입       		제약조건
id      	 varchar(30)    primary key
password     varchar(20)    not null   (반드시 값을 넣어야 하는 컬럼)
name		 varchar(50)    not null
point        int                       (not null 지정을 안하면 null 값을 가질 수 있다.)
join_date    date           not null
*/


-- 자동완성: control + space
create table member (
id varchar(30) primary key,
password varchar(20) not null,
name varchar(50) not null,
point int,
join_date date not null
);

-- datevase 안의 table들 확인
show tables;
-- 테이블 삭제
drop table member;
drop table if exists member;

-- member 테이블에 값(행-row, record) 추가: insert문
insert into member (id, password,name, point, join_date) values('my-id','1111','홍길동',3000,'2022-05-24');
insert into member (id, password,name, point, join_date) values('my-id2','1111','이순신',null,'2022-03-14');
insert into member values('my-id3','3333','유관순',20000,'2022-05-24'); -- 전체 컬럼에 값을 모두 넣을 경우 컬럼 지정은 생략할 수 있다
insert into member values('my-id4','4444','강감찬',null,'2012-03-29');
insert into member (id,password,name,point,join_date) values('my-id5','5555','김구',100,'2020-05-24');
insert into member (id, password, name,point, join_date) values('my-id6','6666','박정희',100000,'2021-12-31');

select * from member;





