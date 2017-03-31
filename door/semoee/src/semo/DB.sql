--���� ���鲨 ��ġ�°� �Ǵ� ������ 1���� �� ����
DROP TABLE friends_tb;
DROP TABLE semohome_tb;
DROP TABLE guestbook_tb;
DROP TABLE enteruser_tb;
DROP TABLE good_tb;
DROP TABLE alaming_tb;
DROP TABLE post_tb;
DROP TABLE accuse_tb;
DROP TABLE user_tb;
DROP TABLE winner_tb;
DROP TABLE vote_tb;
DROP TABLE choice_tb;
DROP TABLE comment_tb;


--������ ����
drop sequence friends_sq;
drop sequence semohome_sq; 
drop sequence guestbook_sq; 
drop sequence enteruser_sq; 
drop sequence good_sq; 
drop sequence alaming_sq; 
drop sequence post_sq;
drop sequence accuse_sq;
drop sequence vote_sq; 
drop sequence choice_sq; 
drop sequence winner_sq;
drop sequence comment_sq;



CREATE TABLE friends_tb (
  fnum number PRIMARY KEY,
  userId varchar2(50),
  friendId varchar2(50)
 );
 
create table semohome_tb (
  semonum number PRIMARY KEY,
  userId varchar2(50));
  
create table guestbook_tb (
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
 semo NUMBER
 );
 
 create table enteruser_tb(
 enternum number primary key,
 userid varchar2(50),
 goodnum varchar2(50)
 );
 
 create table good_tb(
 goodnum number primary key,
 title varchar2(50),
 contents varchar2(200),
 product varchar2(100),
 startdate date,
 enddate date,
 price number,
 imagetype varchar2(50),
 imagename varchar2(50)
 );
 
 create table alaming_tb(
 alamnum number primary key,
 userid varchar2(50),
 postid number
 );
 
 create table post_tb(
 postnum number primary key,
 userid varchar2(50),
 title varchar2(50),
 category varchar2(50),
 accusecount number,
 enddate date
 );
 
 create table comment_tb(
 commentnum number primary key,
 contents varchar2(50),
 userid varchar2(50),
 postnum number
 );
 
 
 create table winner_tb(
 winnernum number primary key,
 userid varchar2(50),
 goodnum number
 );
 
 create table choice_tb(
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
 
 create table accuse_tb(
 accusenum number primary key,
 content varchar2(100),
 postnum number,
 userid varchar2(50)
 );
 

 
CREATE SEQUENCE friends_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE semohome_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE guestbook_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE enteruser_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE good_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE alaming_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE post_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE accuse_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE comment_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE vote_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE winner_sq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE choice_sq START WITH 1 INCREMENT BY 1;


insert into good_tb values(
good_sq.nextval, '��Ʈ�� �����Ǻ�!!', '�ʰ淮 ��Ʈ���Դϴ�.',
'�Ｚ��Ʈ��', '2017/03/21', '2017/04/30', 'image/jpg', 'notebook');
insert into good_tb values(
good_sq.nextval, '������� ��¥�� �����!~', '����� �ǰ����� �縣���� �쿩�� ����!!',
'Ŭ�������', '2017/03/19', '2017/03/30', 'image/jpg', 'beer');
insert into good_tb values(
good_sq.nextval, 'CGV ��ȭ ���ű� 2��', '���������� ��ȭ�� ���� ���������� �𸣴� ����� ����!',
'��ȭ���ű�', '2017/03/23', '2017/05/30', 'image/jpg', 'movie');
insert into good_tb values(
good_sq.nextval, 'BHC ġŲ ����Ƽ��', 'ġŲ�� ������!',
'ġŲ', '2017/02/21', '2017/05/30', 'image/jpg', 'soju');
insert into good_tb values(
good_sq.nextval, '���ϸ� ���� ��1', '�����ñ��� 10000���� �ȵ����� 10�и��� 10000���� �Ҵ� ��ſ��� �帮�� ����',
'���ϸ�����', '2017/03/21', '2017/04/30', 'image/jpg', 'doll');

insert into friends_tb values(
friends_sq.nextval, 'pang', 'chee');
insert into friends_tb values(
friends_sq.nextval, 'pang', 'taek');
insert into friends_tb values(
friends_sq.nextval, 'pang', 'door');
insert into friends_tb values(
friends_sq.nextval, 'pang', 'hehe');
insert into friends_tb values(
friends_sq.nextval, 'chee', 'pang');
insert into friends_tb values(
friends_sq.nextval, 'chee', 'taek');
insert into friends_tb values(
friends_sq.nextval, 'chee', 'door');
insert into friends_tb values(
friends_sq.nextval, 'chee', 'hehe');
insert into friends_tb values(
friends_sq.nextval, 'door', 'pang');
insert into friends_tb values(
friends_sq.nextval, 'door', 'chee');
insert into friends_tb values(
friends_sq.nextval, 'door', 'taek');
insert into friends_tb values(
friends_sq.nextval, 'door', 'hehe');
insert into friends_tb values(
friends_sq.nextval, 'taek', 'pang');
insert into friends_tb values(
friends_sq.nextval, 'taek', 'chee');
insert into friends_tb values(
friends_sq.nextval, 'taek', 'door');
insert into friends_tb values(
friends_sq.nextval, 'taek', 'hehe');
insert into friends_tb values(
friends_sq.nextval, 'hehe', 'pang');
insert into friends_tb values(
friends_sq.nextval, 'hehe', 'chee');
insert into friends_tb values(
friends_sq.nextval, 'hehe', 'door');
insert into friends_tb values(
friends_sq.nextval, 'hehe', 'taek');

insert into semohome_tb values(
semohome_sq.nextval, 'pang');
insert into semohome_tb values(
semohome_sq.nextval, 'chee');
insert into semohome_tb values(
semohome_sq.nextval, 'taek');
insert into semohome_tb values(
semohome_sq.nextval, 'door');
insert into semohome_tb values(
semohome_sq.nextval, 'hehe');

insert into user_tb values(
'pang', '1', '��â��', '1991/11/21', '01084894898', '��ġ', 'lch4898@naver.com', 'M','��','9999999999999');
insert into user_tb values(
'chee', '12', '��ġ��', '1991/03/21', '01063742865', '����', 'chee@naver.com', 'M','����','1000');
insert into user_tb values(
'taek', '123', '������', '1991/04/21', '01031589689', '����', 'kimo343459@naver.com', 'M','�ù�','100');
insert into user_tb values(
'door', '1234', '������', '1993/8/5', '01063386335', 'IT', 'hyeungmoon@gmail.com', 'F','�ù�','50');
insert into user_tb values(
'hehe', '12345', '������', '1994/5/5', '01090434359', '����', 'thkdld4359@naver.com', 'F','���','10');

insert into enteruser_tb values(
enteruser_sq.nextval, 'pang', '1');
insert into enteruser_tb values(
enteruser_sq.nextval, 'pang', '2');
insert into enteruser_tb values(
enteruser_sq.nextval, 'pang', '3');
insert into enteruser_tb values(
enteruser_sq.nextval, 'pang', '4');
insert into enteruser_tb values(
enteruser_sq.nextval, 'pang', '5');
insert into enteruser_tb values(
enteruser_sq.nextval, 'hehe', '2');
insert into enteruser_tb values(
enteruser_sq.nextval, 'chee', '3');
insert into enteruser_tb values(
enteruser_sq.nextval, 'door', '4');
insert into enteruser_tb values(
enteruser_sq.nextval, 'taek', '5');

insert into post_tb values(
post_sq.nextval, 'pang', '���� ����? ����?', '����', accuse_sq.nextval, '2017/03/27');
insert into post_tb values(
post_sq.nextval, 'chee', '���� VS ����', '��ġ�ͻ�ȸ', accuse_sq.nextval, '2017/04/27');
insert into post_tb values(
post_sq.nextval, 'taek', '���� ȸ�İ�?', 'IT�Ͱ���', accuse_sq.nextval, '2017/05/27');
insert into post_tb values(
post_sq.nextval, 'door', '�̰� ���� ������ ������?', '��Ȱ', accuse_sq.nextval, '2017/06/27');
insert into post_tb values(
post_sq.nextval, 'hehe', '�ȳ���¡��~', '����', accuse_sq.nextval, '2017/07/27');

insert into alaming_tb values(
alaming_sq.nextval, 'pang', '2');
insert into alaming_tb values(
alaming_sq.nextval, 'pang', '3');
insert into alaming_tb values(
alaming_sq.nextval, 'pang', '4');
insert into alaming_tb values(
alaming_sq.nextval, 'pang', '5');
insert into alaming_tb values(
alaming_sq.nextval, 'door', '1');
insert into alaming_tb values(
alaming_sq.nextval, 'hehe', '2');
insert into alaming_tb values(
alaming_sq.nextval, 'taek', '3');
insert into alaming_tb values(
alaming_sq.nextval, 'chee', '4');


insert into comment_tb values(
comment_sq.nextval, '���ù�������ȸ1', 'pang', '1');
insert into comment_tb values(
comment_sq.nextval, '���ù�������ȸ2', 'pang', '2');
insert into comment_tb values(
comment_sq.nextval, '���ù�������ȸ3', 'pang', '3');
insert into comment_tb values(
comment_sq.nextval, '���ù�������ȸ4', 'pang', '4');
insert into comment_tb values(
comment_sq.nextval, '���ù�������ȸ5', 'pang', '5');


insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 1, 'hehe');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 2, 'hehe');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 2, 'chee');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 3, 'chee');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 3, 'hehe');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 3, 'pang');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 4, 'pang');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 4, 'door');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 4, 'chee');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 4, 'hehe');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 5, 'hehe');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 5, 'chee');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 5, 'pang');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 5, 'door');
insert into ACCUSE_TB values(accuse_sq.nextval, '�����ؿ�', 5, 'taek');

insert into guestbook_tb values(
guestbook_sq.nextval, 'pang', 'ġ���� ��������...?',2);
insert into guestbook_tb values(
guestbook_sq.nextval, 'pang', '������ ��������...?',3);
insert into guestbook_tb values(
guestbook_sq.nextval, 'pang', '������ ��������...?',4);
insert into guestbook_tb values(
guestbook_sq.nextval, 'pang', '������ ��������...?',5);
insert into guestbook_tb values(
guestbook_sq.nextval, 'chee', '�鷶�ٰ���~',1);
insert into guestbook_tb values(
guestbook_sq.nextval, 'chee', '�������~',3);
insert into guestbook_tb values(
guestbook_sq.nextval, 'chee', '�ߵ���~',4);
insert into guestbook_tb values(
guestbook_sq.nextval, 'chee', '��Ʈ��~',5);

insert into winner_tb values(
winner_sq.nextval, 'pang', 1);
insert into winner_tb values(
winner_sq.nextval, 'pang', 2);
insert into winner_tb values(
winner_sq.nextval, 'pang', 3);
insert into winner_tb values(
winner_sq.nextval, 'pang', 4);
insert into winner_tb values(
winner_sq.nextval, 'pang', 5);

insert into choice_tb values(
choice_sq.nextval, 1, '����', 'image/jpg', 'go');
insert into choice_tb values(
choice_sq.nextval, 1, '�Ȱ���', 'image/jpg', 'nogo');
insert into choice_tb values(
choice_sq.nextval, 2, '����', 'image/jpg', 'beer');
insert into choice_tb values(
choice_sq.nextval, 2, '����', 'image/jpg', 'soju');
insert into choice_tb values(
choice_sq.nextval, 3, 'ȸ��', 'image/jpg', 'noboo');
insert into choice_tb values(
choice_sq.nextval, 3, '��ȸ��', 'image/jpg', 'gotothehome');
insert into choice_tb values(
choice_sq.nextval, 4, '���', 'image/jpg', 'whitegold');
insert into choice_tb values(
choice_sq.nextval, 4, '�İ�', 'image/jpg', 'blueblack');
insert into choice_tb values(
choice_sq.nextval, 5, '�ȳ���', 'image/jpg', 'mook');
insert into choice_tb values(
choice_sq.nextval, 5, '¡��~', 'image/jpg', 'bba');

insert into vote_tb values(vote_sq.nextval, 1, 'chee', 1);
insert into vote_tb values(vote_sq.nextval, 1, 'hehe', 1);
insert into vote_tb values(vote_sq.nextval, 1, 'pang', 1);
insert into vote_tb values(vote_sq.nextval, 1, 'taek', 1);
insert into vote_tb values(vote_sq.nextval, 2, 'door', 1);
insert into vote_tb values(vote_sq.nextval, 3, 'door', 2);
insert into vote_tb values(vote_sq.nextval, 3, 'hehe', 2);
insert into vote_tb values(vote_sq.nextval, 3, 'taek', 2);
insert into vote_tb values(vote_sq.nextval, 4, 'chee', 2);
insert into vote_tb values(vote_sq.nextval, 4, 'pang', 2);
insert into vote_tb values(vote_sq.nextval, 5, 'door', 3);
insert into vote_tb values(vote_sq.nextval, 7, 'door', 4);
insert into vote_tb values(vote_sq.nextval, 8, 'chee', 4);
insert into vote_tb values(vote_sq.nextval, 9, 'door', 5);
insert into vote_tb values(vote_sq.nextval, 10, 'chee', 5);
insert into vote_tb values(vote_sq.nextval, 10, 'hehe', 5);


commit;




// 2017�� 3�� 22�� Pang ��ǰ ���̺���
// �Ҹ𼼸� ��� �Ҹ𼼸� �÷� �߰���
// �߰��� �÷��� �����Ͱ� ����

alter table good_tb
add (price number);
  
  update good_tb
  set price = 10000 where imagename='notebook';
   update good_tb
  set price = 100 where imagename='beer';
   update good_tb
  set price = 800 where imagename='movie';
   update good_tb
  set price = 800 where imagename='soju';
   update good_tb
  set price = 200 where imagename='doll';


