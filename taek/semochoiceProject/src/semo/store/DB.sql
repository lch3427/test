--DROP TABLE friends_tb;
--DROP TABLE semohome_tb;
--DROP TABLE guestbook_tb;
--DROP TABLE enteruser_tb;
--DROP TABLE good_tb;
--DROP TABLE alaming_tb;
--DROP TABLE post_tb;
--DROP TABLE accuse_tb;
--DROP TABLE user_tb;
--DROP TABLE winner_tb;
--DROP TABLE vote_tb;
--DROP TABLE choice_tb;
--DROP TABLE comment_tb;






CREATE SEQUENCE friend_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE semohome_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE guestbook_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE enteruser_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE good_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE alaming_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE post_tb START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE post_accuse START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE accuse_tb START WITH 1 INCREMENT BY 1;



CREATE TABLE friends_tb (
  fnum number PRIMARY KEY,
  userId varchar2(50),
  friendId varchar2(50)
 );
 
create table semohom_tb (
  semonum number PRIMARY KEY,
  userId varchar2(50));
  
create table guestbook1_tb (
 gbnum number PRIMARY KEY,
 userId varchar2(50),
 Contents varchar(200),
 semonum number
 );
 
 create table user_tb(
 ID varchar2(50) primary key,
 pw varchar2(50),
 name varchar2(50),
 birth varchar2(50),
 phonenumber varchar2(50),
 interest varchar2(50),
 email varchar2(50),
 gender varchar2(50),
 grade varchar2(50),
 semo varchar(50)
 );
 
 create table enteruser1_tb(
 enternum number primary key,
 userid varchar2(50),
 goodnum varchar2(50)
 );
 
 create table good1_tb(
 goodnum number primary key,
 title varchar2(50),
 contents varchar2(200),
 product varchar2(100),
 startdate date,
 enddate date,
 imagetype varchar2(50),
 imagename varchar2(50)
 );
 
 create table alaming1_tb(
 alamnum number primary key,
 userid varchar2(50),
 postid number
 );
 
 create table post1_tb(
 postnum number primary key,
 userid varchar2(50),
 title varchar2(50),
 category varchar2(50),
 accusecount number,
 enddate date
 );
 
 create table comment1_tb(
 commentnum number primary key,
 contents varchar2(50),
 userid varchar2(50),
 postnum number
 );
 
 
 create table winner1_tb(
 winnernum number primary key,
 userid varchar2(50),
 goodnum number
 );
 
 create table choice1_tb(
 choicenum number primary key,
 postnum number,
 content varchar2(50),
 imagetype varchar2(50),
 imagename varchar2(50)
 );
 
 create table vote_tb(
 votenum number primary key,
 choicenum number,
 userid varchar2(50),
 postnum number
 );
 
 create table accuse1_tb(
 accusenum number primary key,
 content varchar2(100),
 postnum number,
 userid varchar2(50)
 );
 
 
 
 
 commit;
 
 
 
 
 
 
 
 




