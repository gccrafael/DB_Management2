DROP DATABASE IF EXISTS HENRYBOOKS_IS225;
CREATE DATABASE HENRYBOOKS_IS225;
USE HENRYBOOKS_IS225;

CREATE TABLE branch
( Branch_Number 	char(1) Primary Key,
 Branch_Name 		char(20),
 Branch_Location	char(20),
 Number_Employees	decimal(2,0) );

INSERT INTO branch VALUES ('1', 'Henry Downtown','16 Riverview',10);
INSERT INTO branch VALUES ('2', 'Henry On The Hill','1289 Bedford',6);
INSERT INTO branch VALUES ('3', 'Henry Brentwood','Brentwood Mall',15);
INSERT INTO branch VALUES ('4', 'Henry Eastshore','Eastshore Mall',9);

CREATE TABLE publisher
( Publisher_Code	char(2) Primary Key,
 Publisher_Name		char(20),
 Publisher_City		char(20),
 Publisher_State	char(2) );

INSERT INTO publisher VALUES ('AH','Arkham House Publ.','Sauk City','WI');
INSERT INTO publisher VALUES ('AP','Arcade Publishing','New York','NY');
INSERT INTO publisher VALUES ('AW','Addison Wesley','Reading','MA');
INSERT INTO publisher VALUES ('BB','Bantam Books','New York','NY');
INSERT INTO publisher VALUES ('BF','Best and Furrow','Boston','MA');
INSERT INTO publisher VALUES ('JT','Jeremy P. Tarcher','Los Angeles','CA');
INSERT INTO publisher VALUES ('MP','McPherson and Co.','Kingston','NY');
INSERT INTO publisher VALUES ('PB','Pocket Books','New York','NY');
INSERT INTO publisher VALUES ('RH','Random House','New York','NY');
INSERT INTO publisher VALUES ('RZ','Rizzoli','New York','NY');
INSERT INTO publisher VALUES ('SB','Schoken Books','New York','NY');
INSERT INTO publisher VALUES ('SI','Signet','New York','NY');
INSERT INTO publisher VALUES ('TH','Thames and Hudson','New York','NY');
INSERT INTO publisher VALUES ('WN','W.W. Norton and Co.','New York','NY');

CREATE TABLE author
(Author_Number		char(2) Primary key,
 Author_Name		char(20),
 Author_First		char(20) );

INSERT INTO author VALUES ('01','Archer','Jeffrey');
INSERT INTO author VALUES ('02','Christie','Agatha');
INSERT INTO author VALUES ('03','Clarke','Arthur C.');
INSERT INTO author VALUES ('04','Francis','Dick');
INSERT INTO author VALUES ('05','Cussler','Clive');
INSERT INTO author VALUES ('06','King','Stephen');
INSERT INTO author VALUES ('07','Pratt','Philip');
INSERT INTO author VALUES ('08','Adamski','Joseph');
INSERT INTO author VALUES ('10','Harmon','Willis');
INSERT INTO author VALUES ('11','Rheingold','Howard');
INSERT INTO author VALUES ('12','Owen','Barbara');
INSERT INTO author VALUES ('13','Williams','Peter');
INSERT INTO author VALUES ('14','Kafka','Franz');
INSERT INTO author VALUES ('15','Novalis','');
INSERT INTO author VALUES ('16','Lovecraft','H.P.');
INSERT INTO author VALUES ('17','Paz','Octavio');
INSERT INTO author VALUES ('18','Camus','Albert');
INSERT INTO author VALUES ('19','Castleman','Riva');
INSERT INTO author VALUES ('20','Zinbardo','Philip');
INSERT INTO author VALUES ('21','Gimferrer','Pere');
INSERT INTO author VALUES ('22','Southworth','Rod');
INSERT INTO author VALUES ('23','Wray','Robert');

CREATE TABLE book 
(book_code		char(4) Primary Key,
 book_title		char(30),
 publisher_code		char(2),
 book_type		char(3),
 book_price		decimal(4,2),
 paperback		char(1) );

INSERT INTO book VALUES ('0180','Shyness','BB','PSY',7.65,'Y');
INSERT INTO book VALUES ('0189','Kane and Able','PB','PSY',5.55,'Y');
INSERT INTO book VALUES ('0200','Stranger','BB','FIC',8.75,'Y');
INSERT INTO book VALUES ('0378','Dunwich Horror and Others','PB','HOR',19.75,'N');
INSERT INTO book VALUES ('079X','Smokescreen','PB','MYS',4.55,'Y');
INSERT INTO book VALUES ('0808','Knockdown','PB','MYS',4.75,'Y');
INSERT INTO book VALUES ('1351','Cujo','SI','HOR',6.65,'Y');
INSERT INTO book VALUES ('1382','Marcel Duchamp','PB','ART',11.25,'Y');
INSERT INTO book VALUES ('138X','Death on the Nile','BB','MYS',3.95,'Y');
INSERT INTO book VALUES ('2226','Ghost from the Grand Banks','BB','SFI',19.95,'N');
INSERT INTO book VALUES ('2281','Prints of the 20h Century','PB','ART',13.25,'Y');
INSERT INTO book VALUES ('2766','Prodigal Daughter','PB','FIC',5.45,'Y');
INSERT INTO book VALUES ('2908','Hymns to the Night','BB','POE',6.75,'Y');
INSERT INTO book VALUES ('3350','Higher Creativity','PB','PSY',9.75,'Y');
INSERT INTO book VALUES ('3743','First Among Equals','PB','FIC',3.95,'Y');
INSERT INTO book VALUES ('3906','Vortex','BB','SUS',5.45,'Y');
INSERT INTO book VALUES ('5163','Organ','SI','MUS',16.95,'Y');
INSERT INTO book VALUES ('5790','Database Systems','BF','CS',54.95,'N');
INSERT INTO book VALUES ('6128','Evil Under the Sun','PB','MYS',4.45,'Y');
INSERT INTO book VALUES ('6328','Vixen 07','BB','SUS',5.55,'Y');
INSERT INTO book VALUES ('669X','A Guide to SQL','BF','CS',23.95,'Y');
INSERT INTO book VALUES ('6908','DOS Essentials','BF','CS',20.50,'Y');
INSERT INTO book VALUES ('7405','Night Probe','BB','SUS',5.65,'Y');
INSERT INTO book VALUES ('7443','Carrie','SI','HOR',6.75,'Y');
INSERT INTO book VALUES ('7559','Risk','PB','MYS',3.95,'Y');
INSERT INTO book VALUES ('7947','dBase Programming','BF','CS',39.90,'Y');
INSERT INTO book VALUES ('8092','Magritte','SI','ART',21.95,'N');
INSERT INTO book VALUES ('8720','Castle','BB','FIC',12.15,'Y');
INSERT INTO book VALUES ('9611','Amerika','BB','FIC',10.95,'Y');

CREATE TABLE wrote
(book_code		char(4),
 author_number	char(2),
 sequence_number	decimal(1,0),
 Primary Key (book_code, author_number) );

INSERT INTO wrote VALUES ('0180','20',1);
INSERT INTO wrote VALUES ('0189','01',1);
INSERT INTO wrote VALUES ('0200','18',1);
INSERT INTO wrote VALUES ('0378','16',1);
INSERT INTO wrote VALUES ('079X','04',1);
INSERT INTO wrote VALUES ('0808','04',1);
INSERT INTO wrote VALUES ('1351','06',1);
INSERT INTO wrote VALUES ('1382','17',1);
INSERT INTO wrote VALUES ('138X','02',1);
INSERT INTO wrote VALUES ('2226','03',1);
INSERT INTO wrote VALUES ('2281','19',1);
INSERT INTO wrote VALUES ('2766','01',1);
INSERT INTO wrote VALUES ('2908','15',1);
INSERT INTO wrote VALUES ('3350','10',1);
INSERT INTO wrote VALUES ('3350','11',2);
INSERT INTO wrote VALUES ('3743','01',1);
INSERT INTO wrote VALUES ('3906','05',1);
INSERT INTO wrote VALUES ('5163','12',2);
INSERT INTO wrote VALUES ('5163','13',1);
INSERT INTO wrote VALUES ('5790','07',1);
INSERT INTO wrote VALUES ('5790','08',2);
INSERT INTO wrote VALUES ('6128','02',1);
INSERT INTO wrote VALUES ('6328','05',1);
INSERT INTO wrote VALUES ('669X','07',1);
INSERT INTO wrote VALUES ('6908','22',1);
INSERT INTO wrote VALUES ('7405','05',1);
INSERT INTO wrote VALUES ('7443','06',1);
INSERT INTO wrote VALUES ('7559','04',1);
INSERT INTO wrote VALUES ('7947','07',1);
INSERT INTO wrote VALUES ('7947','23',2);
INSERT INTO wrote VALUES ('8092','21',1);
INSERT INTO wrote VALUES ('8720','14',1);
INSERT INTO wrote VALUES ('9611','14',1);

CREATE TABLE invent 
(book_code		char(4),
 branch_number	char(1),
 Units_on_hand	decimal(2,0),
 Primary Key (book_code, branch_number) );

INSERT INTO invent VALUES ('0180','1',2);
INSERT INTO invent VALUES ('0189','2',2);
INSERT INTO invent VALUES ('0200','1',1);
INSERT INTO invent VALUES ('0200','2',3);
INSERT INTO invent VALUES ('079X','2',1);
INSERT INTO invent VALUES ('079X','3',2);
INSERT INTO invent VALUES ('079X','4',3);
INSERT INTO invent VALUES ('1351','1',1);
INSERT INTO invent VALUES ('1351','2',4);
INSERT INTO invent VALUES ('1351','3',2);
INSERT INTO invent VALUES ('138X','2',3);
INSERT INTO invent VALUES ('2226','1',3);
INSERT INTO invent VALUES ('2226','3',2);
INSERT INTO invent VALUES ('2226','4',1);
INSERT INTO invent VALUES ('2281','4',3);
INSERT INTO invent VALUES ('2766','3',2);
INSERT INTO invent VALUES ('2908','1',3);
INSERT INTO invent VALUES ('2908','4',1);
INSERT INTO invent VALUES ('3350','1',2);
INSERT INTO invent VALUES ('3906','3',2);
INSERT INTO invent VALUES ('5163','1',1);
INSERT INTO invent VALUES ('5790','4',2);
INSERT INTO invent VALUES ('6128','3',3);
INSERT INTO invent VALUES ('6128','2',4);
INSERT INTO invent VALUES ('6328','2',2);
INSERT INTO invent VALUES ('669X','1',1);
INSERT INTO invent VALUES ('6908','2',2);
INSERT INTO invent VALUES ('7405','3',2);
INSERT INTO invent VALUES ('7559','2',2);
INSERT INTO invent VALUES ('7947','2',2);
INSERT INTO invent VALUES ('8092','3',1);
INSERT INTO invent VALUES ('8720','1',3);
INSERT INTO invent VALUES ('9611','1',2);

