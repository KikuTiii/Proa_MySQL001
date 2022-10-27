create database DB_CDS;
use db_cds;

create table Artista(
	Nome_Coluna varchar (100),
    Cod_Art int auto_increment not null,
    Nome_Art varchar (100) not null,
    constraint PK_CodArt primary key (Cod_Art),
    constraint uq_nomeArt unique key (nome_art)
);
create table gravadora(
	Nome_coluna varchar(100) not null,
    Cod_grav int auto_increment not null,
    Nome_grav varchar (100) not null,
    constraint PK_CodGrav primary key (Cod_grav),
    constraint uq_NomeGrav unique key (Nome_grav)
);
create table Categoria(
     Cod_cat int auto_increment not null,
     Nome_cat varchar(100),
     constraint PK_CodCat primary key (Cod_cat),
     constraint uq_NomeCat unique key (nome_cat)
);
select * from Categoria;

create table Estado(
	Sigla_Est char(2) not null,
    Nome_Est char (50) not null
);
create table Cidade(
	Cod_Cid int  not null,
    Sigla_Est char (2) not null,
    Nome_Cid char(2) not null,
    constraint pk_CodCid primary key (Cod_Cid),
    constraint fk_SiglaEst foreign key (Sigla_Est) references Estado (Sigla_Est)
);


