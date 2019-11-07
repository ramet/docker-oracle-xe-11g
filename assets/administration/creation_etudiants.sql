remark Il faut se connecter en tant que ADMIN

-- ============================================================
--    creation des utilisateurs (étudiants) ETD et AUTRE_ETD
-- ============================================================
create user ETD identified by ETD;
create user AUTRE_ETD identified by AUTRE_ETD;

-- alter user ETD profile default;
-- alter user AUTRE_ETD profile default;

grant connect to ETD;
grant connect to AUTRE_ETD;
