CREATE DATABASE EstateDB;
CREATE TABLE Owner(
PersonID CHAR(18) PRIMARY KEY,
Name VARCHAR(20) NOT NULL,
Gender CHAR(2) NOT NULL,
Occupation VARCHAR(20) NOT NULL,
ADDr VARCHAR(50) NOT NULL,
Tel VARCHAR(11) NOT NULL
);
CREATE TABLE Estate(
EstateID CHAR(15) PRIMARY KEY,
EstateName VARCHAR(50) NOT NULL,
EstateBuildName VARCHAR(50) NOT NULL,
EstateAddr VARCHAR(60) NOT NULL,
EstateCity VARCHAR(60) NOT NULL,
EstateType CHAR(4) NOT NULL,
CHECK (EstateType='住宅' OR EstateType='商铺' OR EstateType='车位' OR EstateType='别墅'),
PropertyArea NUMERIC(5,2) NOT NULL,
UsableArea NUMERIC(5,2) NOT NULL,
CompletedDATE DATE NOT NULL,
YearLength INT DEFAULT 70,
Remark VARCHAR(100)
);
CREATE TABLE Registration(
RegisterID INT PRIMARY KEY,
PersonID CHAR(18) NOT NULL,
EstateID CHAR(15) NOT NULL,
Price DECIMAL(18,2) NOT NULL,
PurchasedDate DATE NOT NULL,
DeliverDATE DATE NOT NULL
);
ALTER TABLE Registration ADD CONSTRAINT fk_O_PID FOREIGN KEY (PersonID) REFERENCES Owner (PersonID);
ALTER TABLE Registration ADD CONSTRAINT fk_E_EID FOREIGN KEY (EstateID) REFERENCES Estate (EstateID);

INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('532331678043576001','魏 旭尧','女','数据库管理员','江苏省南通市',87426198367); 
INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('220102199003073000','蒋 子默','女','兽医','四川省成都市',11011138520);
INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('11010119900307053X','赵 荣轩','男','厨师','四川省成都市',62955539190);
INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('110101199003074000','石 潇然','男','教师','青海省西宁市',35979326360);
INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('110155199003074067','叶 致远','男','心理咨询师','江苏省南京市',4025936456);
INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('530102199003070606','崔 思','女','研究员','云南省昆明市',29304526135);
INSERT INTO owner (PersonID,Name,Gender,Occupation,ADDr,Tel) VALUES ('530102199003073188','丁 琪','女','摄影师','云南省昆明市',56603456755);

INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729643','人与自然','成都人与自然','成都市成华区78栋5643号','成都','住宅',48.00,47.6,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729623','人与自然','成都人与自然','成都市成华区78栋5643号','成都','住宅',95.00,92.15,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729624','人与自然','成都人与自然','成都市成华区78栋5643号','成都','住宅',100.00,98.73,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729648','人与自然','成都人与自然','成都市成华区78栋5643号','成都','住宅',149.00,144.53,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('890729648','锦绣城','武汉锦绣城','武汉市青山区3栋108号','武汉','住宅',108.00,104.76,20190302);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('890729647','锦绣城','武汉锦绣城','武汉市青山区3栋108号','武汉','住宅',76.00,74.48,20190302);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330723948','金域缇香','万科金域缇香','成都市双流区44栋678号','成都','住宅',124.00,121.52,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729983','金域缇香','万科金域缇香','成都市双流区44栋678号','成都','住宅',136.00,131.92,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729660','金域缇香','万科金域缇香','成都市双流区44栋678号','成都','住宅',136.00,131.92,20180902);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('560729648','世纪城','南京世纪城','南京市秦淮区9栋804号','南京','住宅',83.00,82.01,20160405);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('560729667','世纪城','南京世纪城','南京市秦淮区9栋804号','南京','住宅',145.00,140.94,20160405);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('560729646','世纪城','南京世纪城','南京市秦淮区9栋804号','南京','商铺',30.00,82.01,20160405);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('560729697','世纪城','南京世纪城','南京市秦淮区9栋804号','南京','商铺',30.00,82.01,20160405);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('560729457','世纪城','南京世纪城','南京市秦淮区9栋804号','南京','车位',15.00,15.00,20160405);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('560729683','世纪城','南京世纪城','南京市秦淮区9栋804号','南京','车位',16.00,16.00,20160405);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729490','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','车位',16.00,16.00,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729694','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','车位',16.00,16.00,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729718','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','车位',16.00,16.00,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729689','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','商铺',30.00,29.55,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729611','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','商铺',35.00,34.51,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729672','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','别墅',528.00,523.98,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729680','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','别墅',420.00,414.96,20190713);
INSERT INTO Estate (EstateID,EstateName,EstateBuildName,EstateAddr,EstateCity,EstateType,PropertyArea,UsableArea,CompletedDATE) VALUES ('330729613','龙江雅苑','美的龙江雅苑','成都市武侯区29栋1023号','成都','别墅',530.00,528.12,20190713);

INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (9089,'220102199003073000','330729643',487660.00,20181004,20181206);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (4684,'11010119900307053X','330729623',1050239.20,20181002,20181208);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (6700,'530102199003073188','330729624',1278400.00,20190102,20180203);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (4790,'530102199003070606','330729648',1700390.00,20181017,20181205);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (7839,'220102199003073000','890729648',1404000.00,20190404,20190508);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (5643,'110101199003074000','890729647',837080.00,20190803,20190915);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (6533,'530102199003070606','330723948',2593009.00,20190201,20190306);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (4566,'530102199003073188','330729983',2040000.00,20190204,20190305);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (3425,'530102199003073188','330729660',2040000.00,20190205,20190306);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (8763,'110155199003074067','560729648',1360902.00,20171001,20171118);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (1459,'532331678043576001','560729667',2910300.30,20170909,20171103);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (7219,'110155199003074067','560729646',1200000.00,20171001,20171118);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (3046,'220102199003073000','560729697',120000.00,20171024,20171204);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (7834,'110155199003074067','560729457',150000.00,20171003,20171120);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (8767,'532331678043576001','560729683',150000.00,20210909,20211103);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (5544,'110155199003074067','330729490',160000.00,20220608,20220914);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (6275,'532331678043576001','330729694',160000.00,20220527,20220705);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (8535,'530102199003073188','330729718',160000.00,20190918,20191103);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (4578,'110101199003074000','330729689',863000.00,20190924,20191105);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (5432,'530102199003070606','330729611',780360.00,20190920,20191029);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (7653,'530102199003073188','330729611',10037900.00,20190918,20191103);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (1345,'110155199003074067','330729680',9302800.00,20220608,20220914);
INSERT INTO Registration (RegisterID,PersonID,EstateID,Price,PurchasedDate,DeliverDATE) VALUES (4589,'532331678043576001','330729613',10730893.00,20220527,20220705);


SELECT * FROM Estate WHERE EstateType='商铺';


SELECT * FROM Estate WHERE CompletedDATE>20181201 AND PropertyArea>90.00 AND EstateType='住宅';


--SELECT * FROM Owner WHERE PersonID IN (SELECT PersonID FROM Registration GROUP BY PersonID HAVING COUNT(*)>2);
SELECT * FROM Owner WHERE PersonID IN (SELECT PersonID FROM Registration WHERE EstateID IN (SELECT EstateID FROM Estate WHERE EstateType='住宅')GROUP BY PersonID HAVING COUNT(*)>2);


--SELECT * FROM Owner WHERE PersonID IN (SELECT PersonID FROM Registration GROUP BY PersonID HAVING COUNT(*)>2 WHERE EstateID IN(SELECT EstateID FROM Estate GROUP BY EstateCity));
SELECT * FROM Owner WHERE PersonID IN (SELECT PersonID FROM Registration WHERE EstateID IN(SELECT EstateID FROM Estate WHERE EstateType='住宅' GROUP BY EstateCity)GROUP BY PersonID HAVING COUNT(*)>2);


--SELECT SUM(PropertyArea) FROM Estate GROUP BY EstateType (SELECT PropertyArea FROM Estate WHERE EstateID IN (SELECT EstateID FROM Registration WHERE PurchasedDate BETWEEN 20180101 AND 20181212)GROUP BY EstateCity);
SELECT SUM(PropertyArea),EstateCity FROM Estate WHERE EstateID IN (SELECT EstateID FROM Registration WHERE PurchasedDate BETWEEN 20180101 AND 20181212) AND EstateCity='南京';
SELECT SUM(PropertyArea),EstateCity FROM Estate WHERE EstateID IN (SELECT EstateID FROM Registration WHERE PurchasedDate BETWEEN 20180101 AND 20181212) AND EstateCity='成都';
SELECT SUM(PropertyArea),EstateCity FROM Estate WHERE EstateID IN (SELECT EstateID FROM Registration WHERE PurchasedDate BETWEEN 20180101 AND 20181212) AND EstateCity='武汉';
SELECT SUM(PropertyArea),EstateCity FROM Estate WHERE EstateID IN (SELECT EstateID FROM Registration WHERE PurchasedDate BETWEEN 20180101 AND 20181212) GROUP BY EstateCity;


--SELECT SUM(Price) FROM Registration GROUP BY EstateType (SELECT PropertyArea FROM Estate WHERE EstateID IN (SELECT EstateID FROM Registration WHERE PurchasedDate BETWEEN 20180101 AND 20181212)GROUP BY EstateCity);
SELECT SUM(Registration.Price),Estate.EstateCity FROM Registration INNER JOIN Estate ON Registration.EstateID=Estate.EstateID WHERE Registration.EstateID IN (SELECT Registration.EstateID FROM Registration WHERE Registration.PurchasedDate BETWEEN 20180101 AND 20181212) GROUP BY EstateCity;


CREATE VIEW EstatePurchaseInformation 
(身份证号,房产编号,房产名称,房产类型,产权面积,购买金额,购买日期,房产楼盘,房产城市)
AS SELECT Registration.PersonID,Estate.EstateID,Estate.EstateName,Estate.EstateType,Estate.PropertyArea,Registration.Price,Registration.PurchasedDate,Estate.EstateBuildName,Estate.EstateCity
FROM Estate,Registration WHERE Estate.EstateID=Registration.EstateID;

SELECT * FROM EstatePurchaseInformation WHERE 身份证号='532331678043576001' ORDER BY PurchasedDate DESC;
SELECT * FROM EstatePurchaseInformation WHERE 身份证号='220102199003073000' ORDER BY PurchasedDate DESC;
SELECT * FROM EstatePurchaseInformation WHERE 身份证号='11010119900307053X' ORDER BY PurchasedDate DESC;
SELECT * FROM EstatePurchaseInformation WHERE 身份证号='110101199003074000' ORDER BY PurchasedDate DESC;
SELECT * FROM EstatePurchaseInformation WHERE 身份证号='110155199003074067' ORDER BY PurchasedDate DESC;
SELECT * FROM EstatePurchaseInformation WHERE 身份证号='530102199003070606' ORDER BY PurchasedDate DESC;
SELECT * FROM EstatePurchaseInformation WHERE 身份证号='530102199003073188' ORDER BY PurchasedDate DESC;



CREATE VIEW SalesStatistics
(日期,城市,房产类型,销售金额)
AS SELECT Registration.PurchasedDate,Estate.EstateCity,Estate.EstateType,Registration.Price
FROM Estate,Registration WHERE Estate.EstateID=Registration.EstateID;

--SELECT COUNT(房产类型) AS '销售套数',SUM(销售金额) AS '总销售金额' FROM SalesStatistics 
--(SELECT * FROM SalesStatistics WHERE PurchasedDate BETWEEN 20180101 AND 20181212 GROUP BY EstateType) GROUP BY EstateCity;

SELECT SUM(销售金额) AS '总销售金额',COUNT(城市) AS '销售套数',城市 FROM SalesStatistics WHERE 日期 BETWEEN 20180101 AND 20181212  AND 房产类型='住宅' GROUP BY 城市;


SELECT * FROM EstatePurchaseInformation WHERE 身份证号='530102199003073188' ORDER BY PropertyArea DESC LIMIT 3;

SELECT * FROM Owner WHERE PersonID LIKE '530%';

UPDATE Estate SET Remark='已出租' WHERE EstateID=330723948;

SELECT EstateID,CompletedDATE FROM Estate WHERE EXISTS (SELECT * FROM Estate WHERE CompletedDATE BETWEEN 20190101 AND 20191212);



















