-- EMS 테이블 생성
DROP TABLE tbl_ems;
CREATE TABLE tbl_ems (
    ems_seq	NUMBER	PRIMARY KEY,	
    ems_to_email	VARCHAR2(50)		NOT NULL,
    ems_from_email	VARCHAR2(50)		NOT NULL,
    ems_to_name	nVARCHAR2(50),
    ems_from_name	nVARCHAR2(50),		
    ems_send_date	VARCHAR2(10)		NOT NULL,
    ems_send_time	VARCHAR2(20)		NOT NULL,
    ems_subject	nVARCHAR2(125)		NOT NULL,
    ems_content	nVARCHAR2(1000)		NOT NULL,
    ems_file1	VARCHAR2(64),		
    ems_file2	VARCHAR2(64)		
);

SELECT * FROM tbl_ems ;

CREATE SEQUENCE SEQ_EMS 
START WITH 1
INCREMENT BY 1;


-- 커뮤니티에서 사용할 테이블 생성
DROP TABLE tbl_board;
CREATE TABLE tbl_board(
    bno NUMBER,
    title VARCHAR2(200) NOT NULL,
    content VARCHAR2(4000) NOT NULL,
    writer VARCHAR2(30) NOT NULL,
    viewcnt NUMBER DEFAULT 0,
    replycnt NUMBER DEFAULT 0,
    regdate DATE DEFAULT SYSDATE    
);

-- primary key 이름 부여
ALTER TABLE tbl_board
ADD CONSTRAINT tbl_board_pk_bno PRIMARY KEY(bno);

-- 커뮤니티에서 사용할 시쿼스 생성
DROP SEQUENCE seq_board;
CREATE SEQUENCE seq_board
START WITH 1
INCREMENT BY 1;

-- 커뮤니티에 더미데이터 입력
INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '안녕하세요', '하하', '하하');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '하이', '라라', '라라');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '가가', '가가', '가가');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '나나', '다다', '다다');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '바바', '바바', '바바');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '사사', '사사', '사사');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '아아', '아아', '아아');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '자자', '자자', '자자');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '차차', '차차', '차차');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '카카', '카카', '카카');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '파파', '파파', '파파');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '구구', '구구', '구구');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '기기', '기기', '기기');

INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '니니', '니니', '니니');


INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '디디', '디디', '디디');
INSERT INTO tbl_board(bno, title, content, writer)
VALUES(seq_board.NEXTVAL, '안녕~', '안녕~', '하이');
select * from tbl_board;

commit;

DESC tbl_board;
	SELECT * FROM(
			SELECT rownum AS rnum, A.*
			FROM(
		 		SELECT *
                FROM tbl_board
                ORDER BY bno DESC
        			) A
		) WHERE rnum BETWEEN 1 AND 10;
        
SELECT rownum AS rnum, A.*
    FROM(;
        
        
SELECT rownum, A.*
    FROM tbl_board A
    ORDER BY bno DESC;
        
SELECT
    *
FROM tbl_board;

SELECT * FROM( SELECT rownum AS rnum, A.* 
FROM( 
SELECT * 
FROM tbl_board
WHERE writer LIKE '%디디%' 
OR title LIKE '%나나%' 
OR content LIKE '%나나%' 
ORDER BY bno DESC ) A ) 
WHERE rnum BETWEEN 1 AND 10 ;


SELECT * FROM( SELECT rownum AS rnum, A.* FROM( SELECT * FROM tbl_board WHERE writer LIKE '%%' 
OR title LIKE '%%' OR content LIKE '%%' ORDER BY bno DESC ) A ) WHERE rnum BETWEEN 1 AND 10 ;

-- DTO
SELECT * FROM tbl_board
WHERE bno = 1;


DESC tbl_board;

-- 회원 테이블
DROP TABLE tbl_join;
CREATE TABLE tbl_join(
       userid VARCHAR2(200),
       passwd VARCHAR2(200) NOT NULL,
       name VARCHAR2(100) UNIQUE NOT NULL,
       join_date DATE DEFAULT SYSDATE
);

ALTER TABLE tbl_join
ADD CONSTRAINT pk_join PRIMARY KEY(userid);

DESC tbl_join;

INSERT INTO tbl_join(userid, passwd, name)
VALUES('admin', '1234', '관리자');
INSERT INTO tbl_join(userid, passwd, name)
VALUES('rkrk@rkrk.com', '1234', '가가');
INSERT INTO tbl_join(userid, passwd, name)
VALUES('fkfk@fkfk.com', '1234', '나나');

commit;

select * from tbl_join;
