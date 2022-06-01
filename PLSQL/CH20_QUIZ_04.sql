-- 별 찍기

DECLARE 
	N NUMBER := 1;
	C VARCHAR2(10);
BEGIN
	WHILE N <= 5
	LOOP
		C := C || '*';
		DBMS_OUTPUT.PUT_LINE( C );
		N := N+1;
	END LOOP;
END;
/
