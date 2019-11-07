-- ============================================================
--    suppression puis re-creation des donnees
-- ============================================================

-- SEANCE

delete from SEANCE ;

commit ;

insert into SEANCE values (  1 ,  2 , 'B' , '05/23/1996' , 14 ) ;
insert into SEANCE values (  2 , 18 , 'A' , '05/23/1996' , 14 ) ;
insert into SEANCE values (  3 , 20 , 'C' , '05/23/1996' , 14 ) ;
insert into SEANCE values (  4 ,  7 , 'B' , '05/23/1996' , 16 ) ;
insert into SEANCE values (  5 , 14 , 'B' , '05/23/1996' , 16 ) ;
insert into SEANCE values (  6 ,  7 , 'B' , '05/23/1996' , 18 ) ;
insert into SEANCE values (  7 , 14 , 'B' , '05/23/1996' , 18 ) ;
insert into SEANCE values (  8 ,  2 , 'B' , '05/23/1996' , 20 ) ;
insert into SEANCE values (  9 , 19 , 'A' , '05/23/1996' , 20 ) ;
insert into SEANCE values ( 10 , 20 , 'C' , '05/23/1996' , 20 ) ;
insert into SEANCE values ( 11 ,  7 , 'B' , '05/23/1996' , 22 ) ;
insert into SEANCE values ( 12 , 14 , 'B' , '05/23/1996' , 22 ) ;
insert into SEANCE values ( 13 ,  7 , 'B' , '05/24/1996' , 14 ) ;
insert into SEANCE values ( 14 , 14 , 'B' , '05/24/1996' , 14 ) ;
insert into SEANCE values ( 15 , 19 , 'A' , '05/24/1996' , 14 ) ;
insert into SEANCE values ( 16 ,  2 , 'B' , '05/24/1996' , 16 ) ;
insert into SEANCE values ( 17 , 20 , 'C' , '05/24/1996' , 16 ) ;
insert into SEANCE values ( 18 ,  2 , 'B' , '05/24/1996' , 18 ) ;
insert into SEANCE values ( 19 , 20 , 'C' , '05/24/1996' , 18 ) ;
insert into SEANCE values ( 20 ,  7 , 'B' , '05/24/1996' , 20 ) ;
insert into SEANCE values ( 21 , 14 , 'B' , '05/24/1996' , 20 ) ;
insert into SEANCE values ( 22 , 18 , 'A' , '05/24/1996' , 20 ) ;
insert into SEANCE values ( 23 ,  2 , 'B' , '05/24/1996' , 22 ) ;
insert into SEANCE values ( 24 , 20 , 'C' , '05/24/1996' , 22 ) ;

commit ;

-- RESERVATION

alter trigger AVANT_SUPPR_RESA_OBLIG disable ;

delete from RESERVATION ;

commit ;

insert into RESERVATION values (  1 ,    8 , 'LAURENCE' ) ;
insert into RESERVATION values (  1 ,   64 , 'DENIS' ) ;
insert into RESERVATION values (  1 ,  128 , 'DAVID' ) ;
insert into RESERVATION values (  2 ,   16 , 'SERGE' ) ;
insert into RESERVATION values (  2 ,   32 , 'CHRISTOPHE' ) ;
insert into RESERVATION values (  2 ,   33 , 'DANIELLE' ) ;
insert into RESERVATION values (  2 ,   64 , 'LUC' ) ;
insert into RESERVATION values (  2 ,  128 , 'NICOLAS' ) ;
insert into RESERVATION values (  2 ,  256 , 'PATRICK' ) ;
insert into RESERVATION values (  2 ,  512 , 'FLORENT' ) ;
insert into RESERVATION values (  5 ,   32 , 'CLAUDE' ) ;
insert into RESERVATION values (  5 ,   64 , 'DELPHINE' ) ;
insert into RESERVATION values (  8 ,  256 , 'CYRIL' ) ;
insert into RESERVATION values ( 10 ,    2 , 'SUZANNE' ) ;
insert into RESERVATION values ( 10 ,    4 , 'OLIVIER' ) ;
insert into RESERVATION values ( 10 ,    8 , 'MATTHIEU' ) ;
insert into RESERVATION values ( 10 ,   16 , 'PIERRE' ) ;
insert into RESERVATION values ( 10 ,   32 , 'SEBASTIEN' ) ;
insert into RESERVATION values ( 10 ,   64 , 'ERIC' ) ;
insert into RESERVATION values ( 10 ,  128 , 'BENOIT' ) ;
insert into RESERVATION values ( 10 ,  129 , 'CELINE' ) ;
insert into RESERVATION values ( 10 ,  256 , 'YOHANN' ) ;
insert into RESERVATION values ( 10 ,  512 , 'GUILLAUME' ) ;
insert into RESERVATION values ( 10 ,  513 , 'MICHELLE' ) ;
insert into RESERVATION values ( 12 ,    8 , 'THIBAUT' ) ;
insert into RESERVATION values ( 12 ,   32 , 'FRANCOISE' ) ;
insert into RESERVATION values ( 12 ,   64 , 'XAVIER' ) ;
insert into RESERVATION values ( 12 ,  128 , 'SAMUEL' ) ;
insert into RESERVATION values ( 15 ,    8 , 'JEAN' ) ;
insert into RESERVATION values ( 15 ,   16 , 'SANDRINE' ) ;
insert into RESERVATION values ( 15 ,   17 , 'VLADIMIR' ) ;
insert into RESERVATION values ( 15 ,  128 , 'FRANCK' ) ;
insert into RESERVATION values ( 15 ,  256 , 'JEROME' ) ;
insert into RESERVATION values ( 16 ,  128 , 'ISABELLE' ) ;
insert into RESERVATION values ( 16 ,  512 , 'ALAIN' ) ;
insert into RESERVATION values ( 17 ,   16 , 'STEPHANE' ) ;
insert into RESERVATION values ( 17 ,   32 , 'HUGUES' ) ;
insert into RESERVATION values ( 17 ,   64 , 'VINCENT' ) ;
insert into RESERVATION values ( 20 ,   16 , 'THEODORE' ) ;
insert into RESERVATION values ( 20 ,   64 , 'GREGORY' ) ;
insert into RESERVATION values ( 20 ,  128 , 'ROLANDE' ) ;
insert into RESERVATION values ( 20 ,  256 , 'PHILIPPE' ) ;

alter trigger AVANT_SUPPR_RESA_OBLIG enable ;

commit ;

-- ============================================================
--    verification des donnees
-- ============================================================

select count(*),'= 35 ?','ACTEUR' from ACTEUR 
union
select count(*),'= 20 ?','FILM' from FILM 
union
select count(*),'= 14 ?','REALISATEUR' from REALISATEUR 
union
select count(*),'= 40 ?','ROLE' from ROLE 
union
select count(*),'= 2 ?','CATEGORIE_PLACE' from CATEGORIE_PLACE 
union
select count(*),'= 3 ?','CATEGORIE_SEANCE' from CATEGORIE_SEANCE 
union
select count(*),'= 6 ?','TARIF' from TARIF 
union
select count(*),'= 1000 ?','PLACE' from PLACE 
union
select count(*), '= 24 ?','SEANCE' from SEANCE 
union
select count(*), '= 42 ?','RESERVATION' from RESERVATION ;
