-- 여기는 bbsfinal 사용자 화면입니다

CREATE TABLE tbl_bbs (
        b_id	NUMBER		PRIMARY KEY,
        b_p_id	NUMBER,		
        b_date_time	VARCHAR2(30)	NOT NULL,
        b_writer	nVARCHAR2(30)	NOT NULL,	
        b_subject	nVARCHAR2(125)	NOT NULL,	
        b_content	CLOB,        
        b_file	nVARCHAR2(125)
);
CREATE SEQUENCE seq_bbs
START WITH 1 INCREMENT BY 1;


CREATE TABLE tbl_comment (
    c_id	NUMBER		PRIMARY KEY,
    
    c_b_id	NUMBER	NOT NULL,	-- 게시판과 연동 칼럼
    c_p_id	NUMBER,	            -- 댓글에 댓글 달기 위한 칼럼
    
    c_date_time	VARCHAR2(30)	NOT NULL,
    c_writer	nVARCHAR2(30)	NOT NULL,	
    c_subject	nVARCHAR2(125)	NOT NULL	
);

CREATE SEQUENCE SEQ_CMT
START WITH 1 INCREMENT BY 1;

-- CONNECT BY PRIOR root > child 방향으로 설정
SELECT b_id,b_p_id,b_subject,
LTRIM (SYS_CONNECT_BY_PATH (b_subject, ' > '), ' > ') AS depth_fullname 
FROM tbl_bbs 
START WITH b_p_id = 0 
CONNECT BY PRIOR b_id = b_p_id
ORDER SIBLINGS BY b_p_ID ASC, b_ID ASC; 
/* 정렬 (일반적인 ORDER BY 가 아닌 계층내에서 정렬 할 수 있는 ORDER SIBLINGS BY) */





SELECT b_id , b_p_id , b_subject , ''|| b_id as sort , ''||b_subject as depth_fullname 
FROM tbl_bbs 
WHERE b_p_id = 0;

SELECT B.b_id , B.b_p_id , B.b_subject , 
C.sort || ' > ' || B.b_id as sort , C.depth_fullname || ' > ' || B.b_subject as depth_fullname 
FROM tbl_bbs B, tree_query C WHERE B.b_p_id = C.b_id ;



WITH tree_query(b_id,b_p_id,b_subject,sort, depth_fullname) 
AS ( 

    SELECT b_id , b_p_id , b_subject , ''|| b_id as sort , ''||b_subject as depth_fullname 
    FROM tbl_bbs 
    WHERE b_p_id = 0 
    UNION ALL 
    SELECT B.b_id , B.b_p_id , B.b_subject , 
    C.sort || ' > ' || B.b_id as sort , C.depth_fullname || ' > ' || B.b_subject as depth_fullname 
    FROM tbl_bbs B, tree_query C WHERE B.b_p_id = C.b_id 
    
)
SELECT b_id, b_p_id,b_subject,depth_fullname FROM tree_query ORDER BY SORT;




