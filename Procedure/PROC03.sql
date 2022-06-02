--사원번호로 사원명, 급여, 직급 얻어오는 프로시저

CREATE OR REPLACE PROCEDURE SEL_EMPNO (
	VEMPNO IN EMP01.EMPNO%TYPE,
	VENAME OUT EMP01.ENAME%TYPE,
	VSAL OUT EMP01.SAL%TYPE,
	VJOB OUT EMP01.JOB%TYPE)
IS
BEGIN
	SELECT ENAME, SAL, JOB
	INTO VENAME, VSAL, VJOB
	FROM EMP01
	WHERE EMPNO = VEMPNO;
END;
/