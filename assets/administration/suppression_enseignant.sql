remark Il faut se connecter en tant que ADMIN

-- ============================================================
--    suppression d'un compte enseignant
-- ============================================================

accept cpte char prompt 'Saisissez le compte enseignant � supprimer : '
drop user &cpte cascade ;
