CREATE TABLESPACE books_tb
DATAFILE 'mybooks.dbf'
SIZE 10M AUTOEXTEND ON NEXT 10K;

CREATE USER bookuser IDENTIFIED BY bookuser;
GRANT DBA to bookuser;
