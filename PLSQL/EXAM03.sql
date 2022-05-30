--DEPT테이블 특정 부서 정보 출력
DECLARE
	VDEPT DEPT%ROWTYPE;

BEGIN
	SELECT *
	INTO VDEPT
	FROM DEPT
	WHERE DEPTNO = 10;

	DBMS_OUTPUT.PUT_LINE('부서번호 : ' || VDEPT.DEPTNO);
	DBMS_OUTPUT.PUT_LINE('부서이름 : ' || VDEPT.DNAME);
	DBMS_OUTPUT.PUT_LINE('지역 : ' || VDEPT.LOC);
END;
/