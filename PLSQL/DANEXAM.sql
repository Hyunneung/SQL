--대체변수 &, && 으로 구구단 출력

DECLARE 
	DAN NUMBER(10) := &DAN;
	NUM NUMBER(10) := &&NUM;

BEGIN 
	FOR LO IN 1..NUM LOOP
		DBMS_OUTPUT.PUT_LINE(DAN || ' * ' || LO || ' = ' || DAN*LO);
	END LOOP;
END;
/