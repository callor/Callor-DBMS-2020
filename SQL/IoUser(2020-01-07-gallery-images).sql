DROP TABLE tbl_images CASCADE CONSTRAINTS;
CREATE TABLE tbl_images (	
    img_file_seq number primary key,
	img_file_p_code	number,
	img_file_origin_name	nvarchar2(255),
	img_file_upload_name	nvarchar2(255)
    
);

CREATE SEQUENCE SEQ_IMAGES
START WITH 1 INCREMENT BY 1;

ALTER TABLE tbl_images
ADD CONSTRAINT FK_IMAGE FOREIGN KEY (img_file_p_code) 
REFERENCES tbl_gallery(img_seq) ON DELETE CASCADE;

DELETE FROM tbl_gallery;
commit ;


CREATE TABLE tbl_user (
	u_id varchar2(125),
	u_nick nvarchar2(125),
	u_name nvarchar2(125),
	u_password varchar2(125),
	u_tel varchar2(20),
	u_grade varchar2(10),
    CONSTRAINT pk_user PRIMARY KEY (u_id)
    
    
);