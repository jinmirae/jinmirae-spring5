--DDL문(create; alter;), DCL문(commit; rollback;)
--DML문(Dara Manufacture Language) insert, update,delete
--inser문:테이블에 새로운 레코드(row)를 추가
CREATE TABLE dept02 AS SELECT * FROM dept WHERE 1=0;
--위 쿼리는 테이블을 복제하는 명령
--위처럼 쿼리를 실행 dept테이블과 구조와 내용이 똑같은 테이블생성
--where 조건이 붙으면, 구조는 같으나 내용은 빈 테이블이 생성
INSERT INTO dept02(
--필드명
deptno, dname, loc
) VALUES(
10, '개발부서', '천안'
--바인딩값
);
insert into dept02 values(20,'디자인부','경기도');
--DCL명령어 
COMMIT;--데이터베이스쿼리직접입력한 결과는 반드시 커밋을 해줘야지만 
--실제 저장이 됩니다. 커밋을 하지않으면, 여기만 보이고, 다른곳X
SELECT * FROM dept02 ORDER BY deptno;
-- DELETE는 레코드1줄을 지우는 명령
DELETE FROM dept02; -- 이렇게 사용하시면 모든 레코드가 삭제됨 주의.
DELETE FROM dept02 WHERE deptno >= 0;--모두 삭제 where반드시포함
--DROP table테이블명은 테이블자체를 물리적으로 없애는 명령
DROP TABLE dept02;--드롭 테이블 커밋없이 바로 적용가능.
CREATE TABLE emp01 AS SELECT * FROM emp;--테이블복제명령
SELECT * FROM emp01;
--UPDATE TABLE명 SET 필드명 = '바꿀값' where empno='특정ID'
UPDATE emp01 SET ename = '진미래';
ROLLBACK;--롤백은 마지막 커밋 바로전까지 되돌립니다.



