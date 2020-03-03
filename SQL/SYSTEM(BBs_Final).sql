-- 여기는 관리자 화면입니다
-- 1. tablespace 생성
CREATE TABLESPACE bbs_final_ts
DATAFILE 'bbs_final.dbf'
SIZE 10M AUTOEXTEND ON NEXT 1K;

-- 2. 사용자 등록, 테이블스테이스 연동
CREATE USER bbsfinal IDENTIFIED BY bbsfinal
DEFAULT TABLESPACE bbs_final_ts;

-- 3. DBA 권한 부여
GRANT DBA TO bbsfinal;