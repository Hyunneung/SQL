--사원명 매개변수로 받아 해당 사원 삭제하는 저장프로시저

CREATE OR REPLACE PROCEDURE DEL_ENAME(VENAME EMP01.ENAME%TYPE)
IS
BEGIN
	DELETE FROM EMP01
	WHERE ENAME = VENAME;
END;
/