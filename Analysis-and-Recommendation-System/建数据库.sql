create database schoolsys;

use schoolsys;

create table School(
                       `name` varchar(10) not null,
                       `rank` varchar(20) not null,
                       type varchar(3) not null ,
                       heat varchar(10),
                       telephone varchar(20) not null ,
                       introduction text(1000) not null ,
                       score2020 int,
                       score2021 int,
                       score2022 int,
                       employmentRatio float(2),
                       goAbroadRatio float(2),
                       enrollmentRatio float(2),
                       sexRatio float(2),
                       primary key (`name`)
);

create table Geography(
                          `name` varchar(10) not null ,
                          address varchar(50) not null ,
                          province varchar(20) not null ,
                          enrollmentNumber int not null ,
                          primary key (`name`,address),
                          foreign key (`name`) references School(`name`)
);



create table Major(
                      major varchar(50) not null ,
                      primary key (major)
);

create table `User`(
                       username varchar(10) not null ,
                       `password` varchar(20) not null,
                       birthday DATE default '2003-1-1',
                       userimgurl varchar(255) not null ,
                       primary key (username)

);

create table SchMaj(
                       `name` varchar(10) not null ,
                       major varchar(50) not null ,
                       primary key (`name`,`major`),
                       foreign key (`name`) references School(`name`),
                       foreign key (major) references Major(major)
);

create table SchHot(
                       `name` varchar(10) not null ,
                       word varchar(50) not null ,
                       primary key (`name`, word),
                       foreign key (`name`) references School(`name`),
                       foreign key (word) references Hotspot(word)
);

drop table if exists Hotspot;
create table Hotspot(
                        word varchar(50) not null,
                        primary key (word)
)
