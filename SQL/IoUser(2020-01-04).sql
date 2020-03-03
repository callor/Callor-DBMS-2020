CREATE TABLE tbl_todoList (

    td_seq	NUMBER		PRIMARY KEY,
    td_date	VARCHAR2(10)	NOT NULL,	
    td_time	VARCHAR2(8)	NOT NULL,	
    td_subject	nVARCHAR2(125)	NOT NULL,	
    td_text	nVARCHAR2(1000)	,	
    
    -- insert를 수행할때 값을 추가하지 않으면 기본값으로 칼럼을 채워라
    -- DEFAULT 항목이 설정되면 오라클에서는 NOT NULL로 설정이 된다
    td_flag	VARCHAR2(1)	DEFAULT '1'	,
    td_complete	VARCHAR2(1)	DEFAULT 'N'	,
    td_alarm	VARCHAR2(1)	DEFAULT 'N'	

);

CREATE SEQUENCE seq_todo 
START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_todolist(td_seq, td_date, td_time,td_subject)
VALUES(0,'2019-12-31','10:00:00','망년회');
COMMIT;


CREATE TABLE tbl_gallery (
	img_seq NUMBER PRIMARY KEY,
	img_title nVARCHAR2(125),
	img_text nVARCHAR2(1000),
	img_file nVARCHAR2(255)
);

CREATE SEQUENCE SEQ_GALLERY
START WITH 1 INCREMENT BY 1;