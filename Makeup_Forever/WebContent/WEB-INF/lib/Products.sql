SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS Products;
/* Create Tables */

-- Products
create TABLE Products
(
	proID int NOT NULL AUTO_INCREMENT,
	proName varchar(30) NOT NULL ,
	proPrice float NOT NULL ,
	picture varchar(300) NOT NULL ,
	proType varchar(20),
	proDetails varchar(200),
	PRIMARY KEY (proID)
);

select * from Products 
order by proID ASC

insert into Products values(1,'兰蔻',498.00,'img/jh/Lancome.jpg','精华液','兰蔻精华液,只为更美的你');
insert into Products values(2,'CPB',869.00,'img/jh/cpb.jpg','精华液','cpb精华液,只为更美的你');
insert into Products values(3,'CPB',875.00,'img/jh/cpb1.jpg','精华液','cpb精华液,只为更美的你');

insert into Products values(4,'黛珂',700.00,'img/jh/Dai.jpg','精华液','黛珂精华液,只为更美的你');
insert into Products values(5,'CPB',789.00,'img/jh/cpb2.jpg','精华液','cpb精华液,只为更美的你');

insert into Products values(6,'兰蔻',400.00,'img/jh/L3.jpg','精华液','兰蔻精华液,只为更美的你');

insert into Products values(7,'黛珂',689.00,'img/jh/Dai1.jpg','精华液','黛珂精华液,只为更美的你');
insert into Products values(8,'兰蔻',500.00,'img/jh/Lancome1.jpg','精华液','兰蔻精华液,只为更美的你');


insert into Products values(9,'雅诗兰黛',500.00,'img/jh/Y.jpg','精华液','ysl精华液,只为更美的你');
insert into Products values(10,'雅诗兰黛',600.00,'img/jh/Y1.jpg','精华液','ysl精华液,只为更美的你');
insert into Products values(11,'雅诗兰黛',300.00,'img/jh/Y4.jpg','精华液','ysl精华液,只为更美的你');

insert into Products values(12,'阿玛尼',498.00,'img/fdy/A3.jpg','粉底液','阿玛尼粉底液,打造光感美肌，美丽动人~');
insert into Products values(13,'阿玛尼',598.00,'img/fdy/A.jpg','粉底液','阿玛尼粉底液,只为更美的你');
insert into Products values(14,'阿玛尼',460.00,'img/fdy/A2.jpg','粉底液','阿玛尼粉底液,只为更美的你');

insert into Products values(15,'CPB',500.00,'img/fdy/C.jpg','粉底液','CPB粉底液,美丽无处不在~');
insert into Products values(16,'CPB',400.00,'img/fdy/C1.jpg','粉底液','CPB粉底液,美丽无处不在~');
insert into Products values(17,'CPB',520.00,'img/fdy/C2.jpg','粉底液','CPB粉底液,美丽无处不在~');
insert into Products values(18,'CPB',500.00,'img/fdy/C4.jpg','粉底液','CPB粉底液,美丽无处不在~');

insert into Products values(19,'Dior',298.00,'img/fdy/D.jpg','粉底液','Dior粉底液,下一个女王非你莫属');
insert into Products values(20,'Dior',430.00,'img/fdy/D1.jpg','粉底液','Dior粉底液,下一个女王非你莫属');
insert into Products values(21,'Dior',430.00,'img/fdy/dior1.jpg','粉底液','Dior粉底液,下一个女王非你莫属');

insert into Products values(22,'Makeup-forever',300.00,'img/fdy/M.jpg','粉底液','Makeup-forever粉底液,本宝宝贵的任性');
insert into Products values(23,'Makeup-forever',320.00,'img/fdy/M1.jpg','粉底液','Makeup-forever粉底液,本宝宝贵的任性');
insert into Products values(24,'Makeup-forever',100.00,'img/fdy/M2.jpg','粉底液','Makeup-forever粉底液,本宝宝贵的任性');

insert into Products values(25,'YSL',600.00,'img/fdy/Y.jpg','粉底液','YSL粉底液,享受羽翼般的呵护');
insert into Products values(26,'YSL',590.00,'img/fdy/Y1.jpg','粉底液','YSL粉底液,享受羽翼般的呵护');



insert into Products values(27,'CPB',300.00,'img/kh/cpb1.jpg','口红','cpb口红,All Wonderful Style');
insert into Products values(28,'CPB',389.00,'img/kh/cpb3.jpg','口红','cpb口红,All Wonderful Style');
insert into Products values(29,'CPB',369.00,'img/kh/cpb2.jpg','口红','cpb口红,All Wonderful Style');

insert into Products values(30,'Dior',300.00,'img/kh/dior1.jpg','口红','dior口红,美的不可方物~~');
insert into Products values(31,'Dior',389.00,'img/kh/dior2.jpg','口红','dior口红,美的不可方物~~');
insert into Products values(32,'Dior',369.00,'img/kh/dior3.jpg','口红','dior口红,美的不可方物~~');

insert into Products values(33,'YSL',289.00,'img/kh/ysl.jpg','口红','ysl口红,迷人清香~~');
insert into Products values(34,'YSL',289.00,'img/kh/ysl3.jpg','口红','ysl口红,迷人清香~~');
insert into Products values(35,'YSL',299.00,'img/kh/ysl4.jpg','口红','ysl口红,迷人清香~~');

insert into Products values(36,'纪梵希',289.00,'img/kh/G.jpg','口红','纪梵希口红,爱情的见证~~');
insert into Products values(37,'纪梵希',359.00,'img/kh/G1.jpg','口红','纪梵希口红,,爱情的见证~~');


insert into Products values(38,'爱马仕',559.00,'img/xs/Hermes.jpg','香水','爱马仕香水,邂逅爱，邂逅你的那个Ta');
insert into Products values(39,'爱马仕',586.00,'img/xs/Hermes1.jpg','香水','爱马仕香水,邂逅爱，邂逅你的那个Ta');

insert into Products values(40,'Dior',539.00,'img/xs/D.jpg','香水','dior香水,花漾甜心~~');

insert into Products values(41,'Chanel',459.00,'img/xs/C.jpg','香水','香水女士香水淡香持久 粉色邂逅50ml');
insert into Products values(42,'Chanel',569.00,'img/xs/C1.jpg','香水','Chanel香奈儿邂逅机会柔情女士香水');
insert into Products values(43,'Chanel',500.00,'img/xs/C2.jpg','香水','Chanel香奈儿邂逅机会柔情女士香水');
insert into Products values(44,'Chanel',700.00,'img/xs/C3.jpg','香水','香水女士香水淡香持久 粉色邂逅50ml');










