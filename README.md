# oracle_02_table
테이블 만들기

SQL(Structured Query Language) 종류

DDL (데이터 정의 언어)
객체를 생성 수정 삭제 등을 작업
객체 생성 = CREATE
객체 수정 = ALTER
객체 삭제 = DROP

DML (데이터 처리 언어)
테이블 안의 데이터 입력 수정 삭제 검색
행 단위의 데이터 입력 =  INSERT
셀 단위의 데이터 수정/삭제 = UPDATE
행 단위의 데이터 삭제 = DELETE
n행 m열의 데이터 검색 = select

DCL(데이터 제어 언어)
트랜젝션 작업 단위의 데이터 입력, 수정, 삭제 작업을 모두 인정 =  COMMIT
트랜잭션 작업 단위의 데이터 입력, 수정, 삭제 작업을 모두 취소 = ROLLBACK
접근제어, 작업권한허용 = GRANT
권한 제거 = revoke

<명심>트랜잭션(Transaction)
▶︎ 모두 취소 되거나 모두 완료되는 2가지 결과로만 진행되는 작업 단위를 말한다.
▶︎ 트랜잭션이 걸린 작업은 가상 작업이 되고 rollback 을 실행하면 모두 취소되고
    commit을 실행하면 가상 작업이 모두 실제로 작업으로 인정된다.
▶︎ <주의> 트랜잭션이 없는 작업은 1가지 이상의 다양한 결과로 진행 될 수 있다.
▶︎ <주의> 트랜잭션은 의도를 가지고 설정하는 것이다.



dept 테이블 만들기




create table dept(
테이블 이름은 dept
create 는 객체 생성


dep_no  number(2)
number : 숫자 자료형 
(  ) : 자료형의 크기 
(2) : 2자리 정수라는의미 즉 0~99사이


, dep_name  varchar2(20)   not null unique
, loc  varchar2(20)   not null
varchar2 :  문자자료형
( )  : 문자형의 크기
(20) : 크기가 20이면 = 영어스펠링 20자 = 한글은 10자 라는 뜻
not null = 반드시 들어오라는 뜻
unique = 중복되지 말라는 뜻 

-------------------------

primary key는 주로 따로 빼서 관리한다 보기 쉽게
,primary key (dep_no)
);

insert into  테이블명 ( ~,~,~) values (~,~,~);


insert into 구문

오라클에서 문자열은 전부 ' ~ '  싱글코트로 감싼다.
insert :  행단위의 데이터 입력
insert into dept(dep_no, dep_name, loc) values (10,'총무부','서울');
insert into dept(dep_no, dep_name, loc) values (20,'영업부','부산');
insert into dept(dep_no, dep_name, loc) values (30,'전산부','대전');
insert into dept(dep_no, dep_name, loc) values (40,'자부','광주');



select :  n행 m열의 데이터를 검색
select * from dept;

drop :  객체 삭제
drop table dept;

transaction(트랜젝션)
=> 취소 되거나 완료되거나 두가지 결과로만 진행되는 작업단위를 지칭한다.



rollback
: 입력 수정 삭제 작업의 가상작업을 원래대로 취소 시키는게 목적이지만
(다음 3가지 조건이라면 rollback으로 되돌릴 수 없다.)
1. 입력 수정 삭제 후 commit을 때리면 rollback 해도 못돌아간다.
2. create 로 만든 건(오라클이 자동커밋시킨다) 없는 걸로 못돌아간다.
3. drop으로 지운건(오라클이 자동커밋시킨다) 못돌아간다.

transaction ( 트랜잭션 )  ?

모두 취소되거나 모두 완료되거나 두가지 결과로만 진행되는 작업단위를 지칭

