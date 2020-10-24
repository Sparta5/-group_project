SET NAMES UTF8;

DROP DATABASE IF EXISTS xg;

CREATE DATABASE xg CHARSET=UTF8;

USE xg;

-- 推杆热卖
CREATE TABLE index_tg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(16),
    title2 VARCHAR(16),
    carousel1 VARCHAR(64),
    carousel2 VARCHAR(64),
    carousel3 VARCHAR(64),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price1 DECIMAL(6,2),
    src1 VARCHAR(64),
    title6 VARCHAR(32),
    title7 VARCHAR(32),
    price2 DECIMAL(6,2),
    src2 VARCHAR(64),
    title8 VARCHAR(32),
    title9 VARCHAR(32),
    price3 DECIMAL(6,2)
);
INSERT INTO index_tg VALUES
(NULL,"1","推杆热卖","STICK VACUUMS","/images/carousel/1.png","/images/carousel/2.png","/images/carousel/3.png","爆款","2020小狗最强动力T12 Plus","170AW强劲吸力 智能人机交互","2999","/images/carousel/4.png","新品手持推杆吸尘器T11 Cyclone","强劲吸力,5款刷头,适用多种除尘环境","1699","/images/carousel/5.png","热销爆款T10 Cyclone","直线风轨设计 超凡吸力","1399");

-- 扫地机热卖
CREATE TABLE index_sdj(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    carousel1 VARCHAR(64),
    carousel2 VARCHAR(64),
    carousel3 VARCHAR(64),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price1 DECIMAL(6,2),
    src1 VARCHAR(64),
    title6 VARCHAR(32),
    title7 VARCHAR(32),
    price2 DECIMAL(6,2),
    src2 VARCHAR(64),
    title8 VARCHAR(32),
    title9 VARCHAR(32),
    price3 DECIMAL(6,2)
);
INSERT INTO index_sdj VALUES
(NULL,"4","扫地机热卖","SWEEPING ROBOT","/images/carousel/6.png","/images/carousel/7.png","/images/carousel/8.png","爆款","新款智能扫地机R60 pro","LDS激光导航+视觉巡航 超大吸力","3790","/images/carousel/9.jpg","新一代扫地机 R55 Cyclone","精确智扫 智能除尘","2399","/images/carousel/10.png","智能扫地机R35 Cyclone","6.1cm超薄机身 吸拖一体","1499");

-- 除螨仪热卖
CREATE TABLE index_cmy(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    src VARCHAR(64),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price DECIMAL(6,2)
);
INSERT INTO index_cmy VALUES
(NULL,"2","除螨仪热卖","Dust Mite Controller","/images/carousel/11.jpg","爆款","新品无线除螨仪D-620 Air","7500PA大吸力，30分钟长效续航","899");

-- 随手吸热卖
CREATE TABLE index_ssx(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    title1 VARCHAR(32),
    title2 VARCHAR(32),
    carousel1 VARCHAR(64),
    carousel2 VARCHAR(64),
    carousel3 VARCHAR(64),
    title3 VARCHAR(32),
    title4 VARCHAR(32),
    title5 VARCHAR(32),
    price DECIMAL(6,2)
);
INSERT INTO index_ssx VALUES
(NULL,"0","随手吸热卖","HAND VACUUM CLEANER","/images/carousel/12.jpg","/images/carousel/13.png","/images/carousel/14.png","爆款","小狗无线随手吸A10 Mate","【新品上市】随吸随拿，无线设计，小巧轻便，超强吸力！","699");

-- 配件热卖
CREATE TABLE index_pj(
    id INT PRIMARY KEY AUTO_INCREMENT,
    family_id int(11) default NULL,
    src VARCHAR(64),
    title VARCHAR(32),
    price DECIMAL(6,2)
);
INSERT INTO index_pj VALUES
(NULL,"6","/images/carousel/15.jpg","电动除螨 T10 pro","130"),
(NULL,"6","/images/carousel/16.jpg","电源适配器 D-531","65"),
(NULL,"6","/images/carousel/17.jpg","电动地刷 D-531","260"),
(NULL,"6","/images/carousel/18.jpg","通用UV灯管","29");

-- 注册
CREATE TABLE reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(16),
    upwd   VARCHAR(32)
);




#创建保存商品数据的表
CREATE TABLE proList(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    familly VARCHAR(20),
    pname VARCHAR(30),
    guige_src VARCHAR(100),
    price DECIMAL(7,2),
    src VARCHAR(100)
);

#插入数据
INSERT INTO proList VALUES(1,'桌面吸尘器','小狗无线车载吸尘器A10 Mix','http://localhost:5050/public/images/aspirator/1_guige.jpg',499,'http://localhost:5050/public/images/aspirator/1.jpg');
INSERT INTO proList VALUES(8,'桌面吸尘器','小狗无线车载吸尘器A10 min','',499,'http://localhost:5050/public/images/aspirator/2.jpg');
INSERT INTO proList VALUES(9,'桌面吸尘器','小狗无线手持吸尘器A10 Earl','',699,'http://localhost:5050/public/images/aspirator/3.jpg');
INSERT INTO proList VALUES(10,'桌面吸尘器','小狗无线桌面吸尘器A10 Mate','',699,'http://localhost:5050/public/images/aspirator/4.jpg');
INSERT INTO proList VALUES(11,'桌面吸尘器','小狗无线桌面吸尘器A10 Pro','',499,'http://localhost:5050/public/images/aspirator/5.jpg');
INSERT INTO proList VALUES(12,'桌面吸尘器','小狗无线桌面吸尘器A10 Cyclone','',499,'http://localhost:5050/public/images/aspirator/6.jpg');

INSERT INTO proList VALUES(2,'手持/推杆','小狗手持推杆吸尘器T12 Storm','',2990,'http://localhost:5050/public/images/aspirator-hand/1.jpg');
INSERT INTO proList VALUES(13,'手持/推杆','小狗无线手持吸尘器T12 Duke','',2990,'http://localhost:5050/public/images/aspirator-hand/2.jpg');
INSERT INTO proList VALUES(14,'手持/推杆','小狗无线手持吸尘器T12 Plus','',2990,'http://localhost:5050/public/images/aspirator-hand/3.jpg');
INSERT INTO proList VALUES(15,'手持/推杆','小狗无线手持吸拖一体吸尘器T12 Pro','',1990,'http://localhost:5050/public/images/aspirator-hand/4.jpg');
INSERT INTO proList VALUES(16,'手持/推杆','小狗无线手持吸尘器T11 Pro','',1690,'http://localhost:5050/public/images/aspirator-hand/5.jpg');
INSERT INTO proList VALUES(17,'手持/推杆','小狗无线手持吸尘器T11 Cyclone','',1690,'http://localhost:5050/public/images/aspirator-hand/6.jpg');

INSERT INTO proList VALUES(3,'除螨仪','小狗无线除螨吸尘器T11 Mattress','',999,'http://localhost:5050/public/images/chumanyi/1.jpg');
INSERT INTO proList VALUES(18,'除螨仪','小狗无线除螨仪D-620 Air','',899,'http://localhost:5050/public/images/chumanyi/2.jpg');
INSERT INTO proList VALUES(19,'除螨仪','小狗无线除螨仪X8 Mattress','',899,'http://localhost:5050/public/images/chumanyi/3.jpg');
INSERT INTO proList VALUES(20,'除螨仪','小狗无线除螨仪D-610','',999,'http://localhost:5050/public/images/chumanyi/4.jpg');
INSERT INTO proList VALUES(21,'除螨仪','小狗无线除螨仪D-650','',1599,'http://localhost:5050/public/images/chumanyi/5.jpg');
INSERT INTO proList VALUES(22,'除螨仪','小狗小型床褥除螨仪D-607','',399,'http://localhost:5050/public/images/chumanyi/6.jpg');


INSERT INTO proList VALUES(4,'卧式吸尘器','小狗家用卧式吸尘器S9 Pro 白色','',999,'http://localhost:5050/public/images/woshi/1.jpg');
INSERT INTO proList VALUES(23,'卧式吸尘器','小狗家用卧式吸尘器S9 Mate 白色','',999,'http://localhost:5050/public/images/woshi/2.jpg');
INSERT INTO proList VALUES(24,'卧式吸尘器','小狗家用卧式吸尘器D-9005','',999,'http://localhost:5050/public/images/woshi/3.jpg');
INSERT INTO proList VALUES(25,'卧式吸尘器','小狗家用卧式吸尘器D-9002','',999,'http://localhost:5050/public/images/woshi/4.jpg');
INSERT INTO proList VALUES(26,'卧式吸尘器','小狗家用卧式吸尘器S9 Cyclone 白色','',999,'http://localhost:5050/public/images/woshi/5.jpg');
INSERT INTO proList VALUES(27,'卧式吸尘器','中央维修链接','',999,'http://localhost:5050/public/images/woshi/6.jpg');

INSERT INTO proList VALUES(5,'扫地机','小狗智能扫地机器人R60 Pro','',3790,'http://localhost:5050/public/images/saodiji/1.jpg');
INSERT INTO proList VALUES(28,'扫地机','小狗智能扫地机器人R35 Cyclone','',3790,'http://localhost:5050/public/images/saodiji/2.jpg');
INSERT INTO proList VALUES(29,'扫地机','小狗智能扫地机器人R30 Pro','',3790,'http://localhost:5050/public/images/saodiji/3.jpg');
INSERT INTO proList VALUES(30,'扫地机','小狗智能扫地机器人R30 Cyclone','',3790,'http://localhost:5050/public/images/saodiji/4.jpg');
INSERT INTO proList VALUES(31,'扫地机','小狗智能扫地机器人R55 Cyclone','',3790,'http://localhost:5050/public/images/saodiji/5.jpg');
INSERT INTO proList VALUES(32,'扫地机','小狗智能扫地机器人R55 Pro','',3790,'http://localhost:5050/public/images/saodiji/6.jpg');

INSERT INTO proList VALUES(6,'桶式','小狗干湿吹多用吸尘器Q1 White','',999,'http://localhost:5050/public/images/tongshi/1.jpg');
INSERT INTO proList VALUES(33,'桶式','小狗干湿吹多用吸尘器D-807','',999,'http://localhost:5050/public/images/tongshi/2.jpg');
INSERT INTO proList VALUES(34,'桶式','小狗干湿吹多用吸尘器D-805 ','',999,'http://localhost:5050/public/images/tongshi/3.jpg');
INSERT INTO proList VALUES(35,'桶式','小狗多用工业大型吸尘器D-806','',999,'http://localhost:5050/public/images/tongshi/4.jpg');


INSERT INTO proList VALUES(7,'配件','电源适配器 T11 Pro','',999,'http://localhost:5050/public/images/peijian/1.jpg');
INSERT INTO proList VALUES(36,'配件','绒毛滚刷 T11 Cyclone','',999,'http://localhost:5050/public/images/peijian/2.jpg');
INSERT INTO proList VALUES(37,'配件','直管 T11 Cyclone','',999,'http://localhost:5050/public/images/peijian/3.jpg');
INSERT INTO proList VALUES(38,'配件','海帕提手组件 T11 Cyclone','',999,'http://localhost:5050/public/images/peijian/4.jpg');
INSERT INTO proList VALUES(39,'配件','挂架组件 T11 Cyclone','',999,'http://localhost:5050/public/images/peijian/5.jpg');
INSERT INTO proList VALUES(40,'配件','电动除螨刷 T11 Cyclone','',999,'http://localhost:5050/public/images/peijian/6.jpg');


#创建保存商品分类的表
CREATE TABLE proFamilly(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    familly VARCHAR(20)
);
INSERT INTO proFamilly VALUES(1,'桌面吸尘器');
INSERT INTO proFamilly VALUES(2,'手持/推杆');
INSERT INTO proFamilly VALUES(3,'除螨仪');
INSERT INTO proFamilly VALUES(4,'卧式吸尘器');
INSERT INTO proFamilly VALUES(5,'扫地机');
INSERT INTO proFamilly VALUES(6,'桶式');
INSERT INTO proFamilly VALUES(7,'配件');