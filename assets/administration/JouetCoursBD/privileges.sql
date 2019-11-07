-- ============================================================
--    affectation des privileges
-- ============================================================

grant select on GUIBERT.Etudiants   to ETD;
grant select on GUIBERT.Voitures    to ETD;
grant select on GUIBERT.Diplomes    to ETD;
grant select on GUIBERT.AvoirObtenu to ETD;

grant select on GUIBERT.Voitures_Etudiants to ETD ;
