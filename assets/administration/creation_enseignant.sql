remark Il faut se connecter en tant que ADMIN

-- ============================================================
--    creation d'un compte enseignant
-- ============================================================

accept cpte char prompt 'Saisissez le compte enseignant à créer : '
accept pw char prompt 'Saisissez son mot de passe : ' hide

create user &cpte identified by &pw;

grant dba to &cpte;
