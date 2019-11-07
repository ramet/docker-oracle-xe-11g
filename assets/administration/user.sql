--remark Il faut se connecter en tant que ETDDBA

drop user ETD_ramet cascade;

create user ETD_ramet identified by ETD_ramet ;

grant BECOME USER ,
      ANALYZE ANY , AUDIT ANY , 
      BACKUP ANY TABLE , SELECT ANY TABLE ,
      CREATE USER , DROP USER , 
      CREATE SESSION , ALTER SESSION ,
      CREATE TABLE , 
      CREATE VIEW , 
      CREATE CLUSTER ,
      CREATE SYNONYM ,
      CREATE TRIGGER ,
      CREATE PROCEDURE ,
      CREATE TYPE , 
      CREATE SEQUENCE ,
      LOCK ANY TABLE ,
      UNLIMITED TABLESPACE
  to ETD_ramet with admin option ;
