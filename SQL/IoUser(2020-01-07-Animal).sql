create table SimpleTable (
   id int not null,
   first_name varchar(30) not null,
   last_name varchar(30) not null,
   birth_date date not null, 
   employed varchar(3) not null,
   occupation varchar(30) null,
   primary key(id)
);

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE AnimalData';
 
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

BEGIN
 
   EXECUTE IMMEDIATE 'DROP TABLE AnimalDataCopy';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

SELECT * FROM DUAL;
