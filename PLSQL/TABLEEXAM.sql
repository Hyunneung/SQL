--대체변수 &

CREATE TABLE PLEXAM(
		NO NUMBER(10),
		NAME VARCHAR2(10),
		ADDR VARCHAR2(10)
);

DECLARE
	VNO PLEXAM.NO%TYPE := &NO; 
	VNAME PLEXAM.NAME%TYPE := '&NAME';
	VADDR PLEXAM.ADDR%TYPE := '&ADDR';

BEGIN 
	INSERT INTO PLEXAM
	VALUES(VNO, VNAME, VADDR);
	COMMIT;
END;
/
	
	