--ACCEPT�� �μ���ȣ �Է¹޾� �μ� ���� ��� 

ACCEPT V_DEPTNO PROMPT '�μ���ȣ�� �Է��ϼ���.>'

DECLARE
	VDEPTNO EMP.DEPTNO%TYPE := &V_DEPTNO;
	VSUMSAL EMP.SAL%TYPE;
BEGIN
	SELECT SUM(SAL)
	INTO VSUMSAL
	FROM EMP
	WHERE DEPTNO = VDEPTNO;

	IF (VSUMSAL IS NULL) THEN
		DBMS_OUTPUT.PUT_LINE('�ش� �μ��� �����ϴ�');
	ELSE
		DBMS_OUTPUT.PUT_LINE(VDEPTNO || '�� �μ� �޿� ������ ' || VSUMSAL || '�Դϴ�');
	END IF;
END;
/