use master;
go

if DB_ID('TelefonBuch')is null
	create database TelefonBuch;
	go

use TelefonBuch
go

if OBJECT_ID('KontaktListe')is not null
	Drop Table KontaktListe;
	go

if OBJECT_ID('KontaktListe')is null
	create Table KontaktListe(
		ID int primary key,
		VorName nvarchar(200),
		NachName nvarchar(200),
		NummerR nvarchar(200)
		);
	go







	