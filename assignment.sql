show databases;
create database assignment2;
use  assignment2;
create table  PUBLISHERS(
Pub_id int primary key,
P_name varchar(30),
Email varchar(50) unique,
Phone varchar(30) 
);

create table SUBJECTS(
Sub_id int primary key,
S_name varchar(30)
);

CREATE TABLE  AUTHORS
(
    AUID     int PRIMARY KEY,
    ANAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);
CREATE TABLE  TITLES
(
    TITLEID    int PRIMARY KEY,
    TITLE      VARCHAR(30),
    PUBID     int,
    SUBID       int,
    PUBDATE    DATE,
    COVER      CHAR(1),
    PRICE      int,
	CONSTRAINT TITLES_PUBID_FK FOREIGN KEY (PUBID) REFERENCES PUBLISHERS(Pub_id),
	CONSTRAINT TITLES_SUBID_FK FOREIGN KEY (SUBID) REFERENCES SUBJECTS(Sub_id)
);
CREATE TABLE  TITLEAUTHORS
(
    TITLEID    int ,
    AUID       int ,
    IMPORTANCE int,
   PRIMARY KEY(TITLEID,AUID),
   CONSTRAINT  TITLESAUTHORS_TITLEID_FK FOREIGN KEY (TITLEID) REFERENCES TITLES(TITLEID),
   CONSTRAINT  TITLESAUTHORS_AUTHID_FK FOREIGN KEY (AUID) REFERENCES AUTHORS(AUID)
);
