-- ============================================================
--    creation de la base : tables, contraintes, index, vues
-- ============================================================

drop view Voitures_Etudiants ;

drop index Index_NomEtu ;
drop index Index_Voitures_Etudiants ;
drop index Index_AvoirObtenu_Etudiants ;
drop index Index_AvoirObtenu_Diplomes ;

drop table Voitures ;
drop table AvoirObtenu ;
drop table Etudiants ;
drop table Diplomes ;

---- ============================================================
--    creation de la base : tables, contraintes, index, vues
-- ============================================================

drop view Voitures_Etudiants ;

drop index Index_NomEtu ;
drop index Index_Voitures_Etudiants ;
drop index Index_AvoirObtenu_Etudiants ;
drop index Index_AvoirObtenu_Diplomes ;

drop table Voitures ;
drop table AvoirObtenu ;
drop table Etudiants ;
drop table Diplomes ;

-- tables et cle primaire

create table Etudiants ( 
	NoINE		NUMBER(3)	not null ,
	NomEtu		VARCHAR(20)	not null ,
	DepartNaissEtu	NUMBER(2)	,
		constraint ClePrimaire_Etudiants primary key ( NoINE )
) ;

create table Voitures ( 
	NoImmatChiffres	NUMBER(4)	not null ,
	NoImmatLettres	CHAR(3)		not null ,
	NoImmatDepart	NUMBER(2)	not null ,
	Couleur		VARCHAR(10)	,
	NoINE		NUMBER(3)	not null ,
		constraint ClePrimaire_Voitures primary key ( NoImmatChiffres , NoImmatLettres , NoImmatDepart )
) ;

create table Diplomes ( 
	IntitAbrege	CHAR(5)		not null ,
	IntitComplet  	VARCHAR(80)	not null ,
		constraint ClePrimaire_Diplomes primary key ( IntitAbrege )
) ;

create table AvoirObtenu ( 
	NoINE		NUMBER(3)	not null ,
	IntitAbrege	CHAR(5)		not null ,
	Annee		NUMBER(4)	,
		constraint ClePrimaire_AvoirObtenu primary key ( NoINE , IntitAbrege )
) ;

-- contraintes d'integrite referentielles

alter table Voitures
	add constraint CIRef_Voitures_Etudiants 
		foreign key ( NoINE ) references Etudiants ( NoINE ) ;

alter table AvoirObtenu
	add constraint CIRef_AvoirObtenu_Etudiants 
		foreign key ( NoINE ) references Etudiants ( NoINE ) ;

alter table AvoirObtenu
	add constraint CIRef_AvoirObtenu_Diplomes 
		foreign key ( IntitAbrege ) references Diplomes ( IntitAbrege ) ;

-- index

create index Index_Voitures_Etudiants on Voitures ( NoINE asc ) ;
create index Index_AvoirObtenu_Etudiants on AvoirObtenu ( NoINE asc ) ;
create index Index_AvoirObtenu_Diplomes on AvoirObtenu ( IntitAbrege asc ) ;

create index Index_NomEtu on Etudiants ( NomEtu asc ) ;

-- vues

create view Voitures_Etudiants as
select NoImmatChiffres , NoImmatLettres , NoImmatDepart , Couleur , Etudiants.NoINE , NomEtu , DepartNaissEtu
from Voitures , Etudiants
where Voitures.NoINE = Etudiants.NoINE ;

-- ============================================================
--    affichage de la base
-- ============================================================

select TABLE_NAME from ALL_TABLES where OWNER = 'GUIBERT' order by TABLE_NAME ;
select CONSTRAINT_NAME from ALL_CONSTRAINTS where OWNER = 'GUIBERT' order by CONSTRAINT_NAME ;
select INDEX_NAME from ALL_INDEXES where OWNER = 'GUIBERT' order by INDEX_NAME ;
select VIEW_NAME from ALL_VIEWS where OWNER = 'GUIBERT' order by VIEW_NAME ;

