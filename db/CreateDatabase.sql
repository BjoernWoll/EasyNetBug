set xact_abort  on;
begin transaction 
drop table Content
drop table IssueAssignPerson;
drop table Issuetype;
--issuemessage,IssueStatus,issue ;
go

create table severity
(
severity	nvarchar(10) primary key

)

go

create table Product
(
id			int primary key identity,
name		nvarchar(100),
version		nvarchar(10)
)
go

create table issue
(
id				int primary key identity(1,2),
titel			nvarchar(20) not null,
beschreibung	nvarchar(max),
product			int not null,
severity		nvarchar(10) not null default 'INFO',
erstellt_am		datetime,
update_am		datetime

)
go



create table Issuetype
(
id				int primary key identity(1,2),
Name			nvarchar(10) not null unique
)
go

create table IssueIssuetype
(
id				int primary key identity(1,2),
issue			int references issue(id),
issuetype		int	references issuetype(id)

)

go


create table Status
(
id				int primary key identity(1,2),
Name			nvarchar(10) not null unique
)

go

create table IssueStatus
(
id				int primary key identity(1,2),
issue			int	references issue(id),
status			int references status(id),
message			nvarchar(100),
changed_time	datetime
)

go

create table Person
(
id				int primary key identity(1,2),
Name			nvarchar(50) not null,			
Vorname			nvarchar(50) not null,
Mail			nvarchar(50) not null

)
go

create table IssueAssignPerson
(
id				int primary key identity(1,2),
person			int references person(id),
issue			int references issue(id),
assign_date		datetime

)
go


create table Content
(
id				int primary key identity,
text			nvarchar(max),
url				nvarchar(50),
file_content	varbinary(max),
file_extension	nvarchar(10)
)
go
create table issuemessage
(
id							int primary key identity(1,1),
IssueAssignPerson			int references IssueAssignPerson(id),
titel						nvarchar(50),
Content						int references content(id),
)
go
commit