create database schoolsys;

use schoolsys;
drop table if exists schhot;
drop table if exists Geography;
drop table if exists enrollmentinfo;
drop table if exists hotspot;
drop table if exists schmaj;
drop table if exists majorinfo;
drop table if exists administrator;
drop table if exists feedback;
drop table if exists advertisement;

drop table if exists School;
drop table if exists user;

drop table if exists school;
create table School
(
    `name`          varchar(20) not null,
    `rank`          varchar(20) not null,
    type            varchar(3)  not null,
    heat            varchar(10),
    telephone       varchar(20) not null,
    introduction    text(10000)  not null,
    employmentRatio float(2),
    goAbroadRatio   float(2),
    enrollmentRatio float(2),
    sexRatio        float(2),
    location        varchar(10),
    logo            varchar(255),
    primary key (`name`)
);

drop table if exists geography;
create table Geography
(
    `name`  varchar(20) not null,
    address varchar(50) not null,
    primary key (name, address),
    foreign key (name) references School (name)
);


drop table if exists major;
drop table if exists Majorinfo;
create table Majorinfo
(
    major varchar(50) not null,
    primary key (major)
);

drop table if exists user;
create table `User`
(
    username   varchar(10)  not null,
    `password` varchar(20)  not null,
    #     默认生日
    birthday   DATE                  default '2003-1-1',
    #     默认头像
    userimgurl varchar(255) not null default 'https://img0.baidu.com/it/u=604179611,2350467333&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400',
    sex        varchar(5)   not null default '男',
    primary key (username)
);

DROP TABLE IF EXISTS `schmaj`;
CREATE TABLE IF NOT EXISTS `schmaj` (
                                        `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
                                        `major` varchar(50) NOT NULL,
                                        PRIMARY KEY (`name`,`major`),
                                        KEY `major` (`major`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

drop table if exists schhot;

drop table if exists Hotspot;
create table Hotspot
(
    `name`    varchar(20) not null,
    word      varchar(50) not null,
    heatRatio float(2)    not null,
    primary key (word, name, heatRatio),
    foreign key (name) references School (name)
);


drop table if exists EnrollmentInfo;
create table EnrollmentInfo
(
    `name`                varchar(20) not null,
    score2020             int         not null,
    score2021             int         not null,
    score2022             int         not null,
    province              varchar(20) not null,
    enrollementNumber2020 int         not null,
    enrollementNumber2021 int         not null,
    enrollementNumber2022 int         not null,
    primary key (name, province),
    foreign key (name) references School (name)
);

drop table if exists administrator;
create table administrator(
    adminname varchar(10) not null ,
    `password` varchar(20) not null ,
    primary key (adminname)
);


drop table if exists advertisement;
create table advertisement(
    title varchar(50) not null ,
    contenttext text not null ,
    `name` varchar(20) not null,
    primary key (title, name) ,
    foreign key (name) references school(name)
);

drop table if exists feedback;
create table feedback(
    username varchar(10) not null ,
    feedback varchar(300) not null ,
    method varchar(50),
    `status` varchar(5),
    primary key (username,feedback),
    foreign key (username) references User(username)
);
