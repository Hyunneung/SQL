--EMP���̺� Ư�� ��� ���� ���
DECLARE
	VEMP EMP%ROWTYPE;
BEGIN
	SELECT *
	INTO VEMP
	FROM EMP
	WHERE ENAME = 'SCOTT';
	DBMS_OUTPUT.PUT_LINE('��� / �̸� / ���� / �Ŵ��� / �Ի����� / �޿� / Ŀ�̼� / �μ���ȣ');
	DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE(VEMP.EMPNO || ' / ' || VEMP.ENAME || ' / ' || VEMP.JOB || ' / ' || VEMP.MGR || ' / ' || 
				VEMP.HIREDATE || ' / ' || VEMP.SAL || ' / ' || NVL(VEMP.COMM,0) || ' / ' || VEMP.DEPTNO);
END;
/
