SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */
DROP TABLE IF EXISTS User;


/* Create Tables */
-- User
CREATE TABLE User
(
	userId int unsigned NOT NULL AUTO_INCREMENT COMMENT 'userId',
	nickName varchar(15) NOT NULL COMMENT 'nickName',
	username varchar(15) NOT NULL COMMENT 'username',
	password varchar(15) NOT NULL COMMENT 'password',
	sex varchar(4)  COMMENT 'sex' ,
	email varchar(20) NOT NULL COMMENT 'email',
	headImage varchar(300) COMMENT 'headImage',
	PRIMARY KEY (userId)
) COMMENT = 'User';

insert into User values(2011,'本尊是个小仙女','20110514','sdgffhht','女','adbgf@qq.com','img/userheadImage/2.jpg');
insert into User values(2015,'豆奶大哥','20110511','$1111111de','女','1903502727@qq.com','img/userheadImage/2.jpg');
insert into User values(2012,'豆奶小仙女儿','2015117220','lw19960812','女','1003502727@qq.com','img/userheadImage/2.jpg');
insert into User values(2013,'逗比一号','20110513','a_23456','男','1803502727@qq.com','img/userheadImage/m2.jpg');
insert into User values(2014,'12341234像首歌','20110517','abcdefg','男','1956502727@qq.com','img/userheadImage/4.jpg');
insert into User values(2016,'臣妾做不到哇','20110515','%%sdsfadab','女','223344@qq.com','img/userheadImage/1.jpg');


select * from User;







