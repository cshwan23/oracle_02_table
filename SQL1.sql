---------------------
--dept 테이블 만들기
---------------------
-- 테이블 이름은 dept
create table dept(

    -- 숫자 자료형 number --(2)자료형의 크기 2자리 정수라는 0~99사이
    dep_no number(2)

    -- varchar2()는 문자자료형 크기가 20이면 영어스펠링 20자 한글은 10자 라는뜻
    -- 반드시 들어오라는 뜻 = not null
    -- 중복되지 말라는 뜻 = unique
    ,dep_name varchar2(20)  not null unique
    ,loc varchar2(20)  not null
    -----------------------------
    ,primary key (dep_no)
);

-- 오라클 문자열은 전부 ''싱글코트로 감싼다.
insert into dept(dep_no, dep_name, loc) values (10,'총무부','서울');
insert into dept(dep_no, dep_name, loc) values (20,'영업부','부산');
insert into dept(dep_no, dep_name, loc) values (30,'전산부','대전');
insert into dept(dep_no, dep_name, loc) values (40,'자부','광주');



select * from dept;

-- drop table dept;

transaction(트랜젝션)?
=> 취소 되거나 완료되거나 두가지 결과로만 진행되는 작업단위를 지칭한다.