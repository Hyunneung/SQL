--EMP���̺� Ȱ���� ���� ����ϱ� (��, ���� = �޿�*12+Ŀ�̼�)

DECLARE
	VEMP EMP%ROWTYPE;
	ANNSAL NUMBER(7,2);
BEGIN
	SELECT *
	INTO VEMP
	FROM EMP
	WHERE EMPNO = 7788;
	
	ANNSAL := VEMP.SAL*12+NVL(VEMP.COMM,0);

	DBMS_OUTPUT.PUT_LINE('��� / �̸� / ����');
	DBMS_OUTPUT.PUT_LINE('--------------------');
	DBMS_OUTPUT.PUT_LINE(VEMP.EMPNO || ' / ' || VEMP.ENAME || ' / ' || ANNSAL);

END;
/