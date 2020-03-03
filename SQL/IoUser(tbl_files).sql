alter table tbl_product add p_file nVARCHAR2(255);

CREATE TABLE tbl_files (
	file_seq NUMBER PRIMARY KEY,
	file_p_code VARCHAR2(5),
	file_origin_name nVARCHAR2(255),
	file_upload_name  nVARCHAR2(255)    
);

CREATE SEQUENCE seq_files 
START WITH 1 INCREMENT BY 1;


SELECT * FROM
(
    SELECT /*+ FIRST_ROWS */ ROWNUM AS SEQ, OR_TABLE.* 
    FROM ( 
            SELECT /*+ INDEX_DESC(TBL_PRODUCT) */ * FROM tbl_product
          ) OR_TABLE
    WHERE ROWNUM < 100      
)
WHERE SEQ BETWEEN 1 AND 10 ;

select B.rum, B.id, B.name, B.content, B.regdate
from
    (select rownum as rnum, A.id, A.name, A.content, A.regdate
    from (
        select id, name, content, regdate
        from board
        order by regdate desc ) A
    where rownum <=20 ) B
where B.rnum >= 11


