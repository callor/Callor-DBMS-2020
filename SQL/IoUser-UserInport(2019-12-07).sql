alter table tbl_memo add m_cat varchar2(50);

CREATE SEQUENCE SEQ_MEMO
START WITH 500 INCREMENT BY 1;


--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-05-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_USER
--------------------------------------------------------

  CREATE TABLE "TBL_USER" 
   (	"U_ID" VARCHAR2(125 BYTE), 
	"U_NICK" NVARCHAR2(125), 
	"U_NAME" NVARCHAR2(125), 
	"U_PASSWORD" VARCHAR2(125 BYTE), 
	"U_TEL" VARCHAR2(20 BYTE), 
	"U_GRADE" VARCHAR2(5 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_HOBBY
--------------------------------------------------------

  CREATE TABLE "TBL_HOBBY" 
   (	"H_CODE" VARCHAR2(5 BYTE), 
	"H_NAME" NVARCHAR2(125), 
	"H_REM" NVARCHAR2(125)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_UHOBBY
--------------------------------------------------------

  CREATE TABLE "TBL_UHOBBY" 
   (	"UH_SEQ" NUMBER, 
	"UH_ID" VARCHAR2(125 BYTE), 
	"UH_CODE" VARCHAR2(5 BYTE)
   ) ;
REM INSERTING into TBL_USER
SET DEFINE OFF;
Insert into TBL_USER (U_ID,U_NICK,U_NAME,U_PASSWORD,U_TEL,U_GRADE) values ('callor@callor.com','이몽룡','홍길동','1234','0101111111','A');
Insert into TBL_USER (U_ID,U_NICK,U_NAME,U_PASSWORD,U_TEL,U_GRADE) values ('callor88@naver.com','춘향이','성춘향','12345',null,'U');
REM INSERTING into TBL_HOBBY
SET DEFINE OFF;
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0001','독서',null);
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0002','영화감상',null);
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0003','낚시',null);
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0004','등산',null);
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0005','음주가무',null);
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0006','여행',null);
Insert into TBL_HOBBY (H_CODE,H_NAME,H_REM) values ('H0007','TV시청',null);
REM INSERTING into TBL_UHOBBY
SET DEFINE OFF;
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (0,'callor@callor.com','H0001');
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (1,'callor@callor.com','H0001');
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (2,'callor@callor.com','H0004');
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (3,'callor@callor.com','H0006');
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (4,'callor88@naver.com','H0001');
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (5,'callor88@naver.com','H0002');
Insert into TBL_UHOBBY (UH_SEQ,UH_ID,UH_CODE) values (6,'callor88@naver.com','H0005');
--------------------------------------------------------
--  DDL for Index SYS_C007244
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007244" ON "TBL_USER" ("U_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007251
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007251" ON "TBL_HOBBY" ("H_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007248
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007248" ON "TBL_UHOBBY" ("UH_SEQ") 
  ;
--------------------------------------------------------
--  Constraints for Table TBL_USER
--------------------------------------------------------

  ALTER TABLE "TBL_USER" ADD PRIMARY KEY ("U_ID") ENABLE;
  ALTER TABLE "TBL_USER" MODIFY ("U_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "TBL_USER" MODIFY ("U_NAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_USER" MODIFY ("U_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_HOBBY
--------------------------------------------------------

  ALTER TABLE "TBL_HOBBY" ADD PRIMARY KEY ("H_CODE") ENABLE;
  ALTER TABLE "TBL_HOBBY" MODIFY ("H_NAME" NOT NULL ENABLE);
  ALTER TABLE "TBL_HOBBY" MODIFY ("H_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_UHOBBY
--------------------------------------------------------

  ALTER TABLE "TBL_UHOBBY" ADD PRIMARY KEY ("UH_SEQ") ENABLE;
  ALTER TABLE "TBL_UHOBBY" MODIFY ("UH_CODE" NOT NULL ENABLE);
  ALTER TABLE "TBL_UHOBBY" MODIFY ("UH_ID" NOT NULL ENABLE);
  ALTER TABLE "TBL_UHOBBY" MODIFY ("UH_SEQ" NOT NULL ENABLE);