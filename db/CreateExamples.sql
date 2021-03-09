-- Generate Example Data

insert into severity(severity) values('INFO');
insert into severity(severity) values('BLOCKER');
insert into severity(severity) values('BUG');
insert into severity(severity) values('ERROR');

--Personen
insert into Person(Vorname,Name, mail) values('John', 'Doe','example@com.de');
insert into Person(Vorname,Name, mail) values('John', 'Müller','J.Müller@ecom.de');

insert into Product(name, version) values('DMS', '1.0');
insert into Product(name, version) values('DMS', '2.0');
insert into Product(name, version) values('Office', '1.0');

insert into status(Name) values('OPEN');
insert into status(Name) values('WORKING');
insert into status(Name) values('CLOSED');
insert into status(Name) values('REOPEN');

insert into Issuetype(Name) values('BUG');
insert into Issuetype(Name) values('REQUEST');


go

insert into issue(titel,beschreibung,severity,erstellt_am,product)
			values('Test Bug im DMS', 'Bla bla blub', 3, Getdate(),1);