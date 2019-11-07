remark Il faut se connecter en tant que ADMIN

-- ============================================================
--    creation de l'utilisateur (étudiant quasi-DBA) ETDDBA
-- ============================================================
-- creation du tablespace specifique
create tablespace ETDESP datafile '/usr/lib/oracle/xe/oradata/XE/etddba.dbf' size 10M ;

-- creation du compte administrateur pour les etudiants
create user ETDDBA identified by ETDDBA default tablespace ETDESP ;

-- attribution des droits (sous-ensemble de DBA, mais avec à peu près EXP_FULL_DATABASE,IMP_FULL_DATABASE,RESOURCE,CONNECT)
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
      CREATE SEQUENCE ,
      LOCK ANY TABLE ,
      UNLIMITED TABLESPACE
  to ETDDBA with admin option ;
