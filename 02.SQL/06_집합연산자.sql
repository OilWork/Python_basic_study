/* ****************************************************
집합 연산자 (결합 쿼리)
- 둘 이상의 select 결과를 합치는 연산
- 구문
 select문  집합연산자 select문 [집합연산자 select문 ...] [order by 정렬컬럼 정렬방식]

-연산자
  - UNION: 두 select 결과를 하나로 결합한다. 단 중복되는 행은 제거한다. 
  - UNION ALL : 두 select 결과를 하나로 결합한다. 중복되는 행을 포함한다. 
   
 - 규칙
  - 연산대상 select 문의 컬럼 수가 같아야 한다. 
  - 연산대상 select 문의 컬럼의 타입이 같아야 한다.
  - 연산 결과의 컬럼이름은 첫번째 select문의 것을 따른다.
  - order by 절은 구문의 마지막에 넣을 수 있다.
*******************************************************/
select 10, 20
union
select 100,200;


-- emp 테이블의 salary 최대값와 salary 최소값, salary 평균값 조회
use hr_join;
select  max(salary) "최대값",
		min(salary) "최솟값",
        avg(salary) "평균값"
from emp;

select "최대값" as "label",max(salary) as "통계값" from emp
union all
select "최소값" ,min(salary) from emp
union all
select "평균값" ,avg(salary) from emp
order by 2;


-- full outer join
-- A 조인 B  : A,B 둘다 source tabele인 경우.
-- A left join B    union    A right join B
select *
from emp e left join dept d on e.dept_id = d.dept_id
union
select *
from emp e right join dept d on d.dept_id = e.dept_id;