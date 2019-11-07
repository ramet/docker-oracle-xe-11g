-- ============================================================
--    affectation des privileges
-- ============================================================

grant select on FILM             to ETD;
grant select on REALISATEUR      to ETD;
grant select on ACTEUR           to ETD;
grant select on ROLE             to ETD;
grant select on SEANCE           to ETD;
grant select on TARIF            to ETD;
grant select on PLACE            to ETD;
grant select on CATEGORIE_PLACE  to ETD;
grant select on CATEGORIE_SEANCE to ETD;
grant select,insert,update,delete on RESERVATION to ETD;

grant select on RESERVATION to AUTRE_ETD;
