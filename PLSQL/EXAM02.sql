--EMP테이블 특정 사원 정보 출력
DECLARE
	VEMP EMP%ROWTYPE;
BEGIN
	SELECT *
	INTO VEMP
	FROM EMP
	WHERE ENAME = 'SCOTT';
	DBMS_OUTPUT.PUT_LINE('사번 / 이름 / 직급 / 매니저 / 입사일자 / 급여 / 커미션 / 부서번호');
	DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE(VEMP.EMPNO || ' / ' || VEMP.ENAME || ' / ' || VEMP.JOB || ' / ' || VEMP.MGR || ' / ' || 
				VEMP.HIREDATE || ' / ' || VEMP.SAL || ' / ' || NVL(VEMP.COMM,0) || ' / ' || VEMP.DEPTNO);
END;
/
