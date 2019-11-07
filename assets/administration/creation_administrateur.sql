remark Il faut se connecter en tant que SYSTEM

-- ============================================================
--    creation du compte d'administration
-- ============================================================

accept pwadmin char prompt 'Saisissez le mot de passe de ADMIN (administrateur) : ' hide
create user ADMIN identified by &pwadmin;

grant dba to ADMIN with admin option;

quit;
