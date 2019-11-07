-- ============================================================
--    creation des donnees
-- ============================================================

-- Etudiants

delete from Etudiants ;
commit ;

insert into Etudiants values ( 5 , 'DURAND' , 33 ) ;
insert into Etudiants values ( 2 , 'LEROI'  , 40 ) ;
insert into Etudiants values ( 4 , 'MARTIN' , 47 ) ;
insert into Etudiants values ( 7 , 'LEROI'  , 33 ) ;
insert into Etudiants values ( 3 , 'DUPOND' , 17 ) ;

-- Voitures

delete from Voitures ;
commit ;

insert into Voitures values ( 3333 , 'BX' , 33 , 'rouge' , 5 ) ;
insert into Voitures values ( 4747 , 'LA' , 47 , 'rouge' , 4 ) ;
insert into Voitures values ( 4040 , 'NT' , 40 , 'jaune' , 5 ) ;

-- Diplomes

delete from Diplomes ;
commit ;

insert into Diplomes values ( 'DUT' , 'Diplome Universitaire de Technologie'                                          ) ;
insert into Diplomes values ( 'BAC' , 'Baccalaureat'                                                                  ) ;
--insert into Diplomes values ( 'Lic' , 'Licence'                                                                       ) ;
--insert into Diplomes values ( 'Mai' , 'Maitrise'                                                                      ) ;
insert into Diplomes values ( 'MIAGe' , 'Maitrise des Methodes Informatiques Appliquees a la Gestion des Entreprises' ) ;
insert into Diplomes values ( 'DEUG' , 'Diplome d Etudes Universitaires Generales'                                    ) ;

-- AvoirObtenu

delete from AvoirObtenu ;
commit ;

insert into AvoirObtenu values ( 4 , 'DEUG'  , 1980 ) ;
insert into AvoirObtenu values ( 2 , 'DEUG'  , 1982 ) ;
insert into AvoirObtenu values ( 5 , 'DUT'   , 1983 ) ;
insert into AvoirObtenu values ( 4 , 'MIAGe' , 1982 ) ;
insert into AvoirObtenu values ( 3 , 'DUT'   , 1983 ) ;
insert into AvoirObtenu values ( 2 , 'BAC'   , 1980 ) ;
insert into AvoirObtenu values ( 4 , 'BAC'   , 1977 ) ;
insert into AvoirObtenu values ( 3 , 'MIAGe' , 1985 ) ;
insert into AvoirObtenu values ( 5 , 'BAC'   , 1981 ) ;
insert into AvoirObtenu values ( 3 , 'BAC'   , 1981 ) ;

-- ============================================================
--    verification des donnees
-- ============================================================

select * from Voitures_Etudiants ;

select count(*), '= 5 ?','Etudiants' from Etudiants 
union
select count(*), '= 3 ?','Voitures' from Voitures 
union
select count(*), '= 4 ?','Diplomes' from Diplomes 
union
select count(*), '= 10 ?','AvoirObtenu' from AvoirObtenu ;
