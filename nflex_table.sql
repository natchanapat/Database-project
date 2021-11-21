CREATE TABLE ACTOR(
 ActorID character varying(10),
 Name character varying(20),
 Sex character varying(10),
 Phone integer,
 PRIMARY KEY(ActorID)
);

CREATE TABLE MOVIE(
 MovieID character varying(10),
 Title character varying(100),
 CopyrightDate date,
 PRIMARY KEY(MovieID)
);

CREATE TABLE ACTOR_MOVIE_ITEM(
 MovieID character varying(10),
 ActorID Character varying(10),
 PRIMARY KEY(MovieID,ActorID),
 CONSTRAINT ActorID_fkey FOREIGN KEY (ActorID)
  REFERENCES ACTOR(ActorID) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE CUSTOMER(
 CustomerID character varying(10),
 Password character varying(30),
 Name character varying(20),
 LName character varying(20),
 PhoneNum integer,
 Email character varying(20),
 PRIMARY KEY(CustomerID)
);

CREATE TABLE MOVIE_CUSTOMER_ITEM(
 MovieID character varying(10),
 CustomerID character varying(10),
 PRIMARY KEY(MovieID,CustomerID),
 CONSTRAINT MovieID_fkey FOREIGN KEY (MovieID)
  REFERENCES MOVIE(MovieID) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE PAY(
 Code character varying(10),
 Name character varying(20),
 PRIMARY KEY(Code)
);

CREATE TABLE GENRE(
 GenreID character varying(10),
 GenreName character varying(20),
 PRIMARY KEY(GenreID)
);

CREATE TABLE MOVIE_GENRE_ITEM(
 MovieID character varying(10),
 GenreID character varying(10),
 PRIMARY KEY(MovieID,GenreID),
 CONSTRAINT GenreID_fkey FOREIGN KEY (GenreID)
  REFERENCES GENRE(GenreID) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE PRODUCER(
 ProducerID character varying(10),
 Name character varying(20),
 Sex character varying(10),
 Phone integer,
 Address character varying(200),
 PRIMARY KEY(ProducerID)
);

CREATE TABLE BILL(
 BillID character varying(10),
 Price money,
 Tax money,
 Total money,
 PRIMARY KEY(BillID)
);

CREATE TABLE RECEIPT(
 BillID character varying(10),
 Date date,
 Time character varying(20),
 PRIMARY KEY(BillID)
);


INSERT INTO actor(ActorID,Name,Sex,Phone)
VALUES ('a0001','Jame','male','0811111111');
INSERT INTO actor(ActorID,Name,Sex,Phone)
VALUES ('a0002','Naded','male','0822222222');
INSERT INTO actor(ActorID,Name,Sex,Phone)
VALUES ('a0003','Mario','male','0833333333');
INSERT INTO actor(ActorID,Name,Sex,Phone)
VALUES ('a0004','Terchantavist','male','0844444444');
INSERT INTO actor(ActorID,Name,Sex,Phone)
VALUES ('a0005','Maidavika','female','0855555555');


INSERT INTO movie(MovieID,Title,CopyrightDate)
VALUES ('m0001','HarryPotter','2001-11-16');
INSERT INTO movie(MovieID,Title,CopyrightDate)
VALUES ('m0002','ToyStory','2019-06-11');
INSERT INTO movie(MovieID,Title,CopyrightDate)
VALUES ('m0003','Inception','2010-07-16');
INSERT INTO movie(MovieID,Title,CopyrightDate)
VALUES ('m0004','JurassicPark','1993-07-31');


INSERT INTO customer(CustomerID,Password,Name,LName,PhoneNum,Email)
VALUES ('nf0001','123456','John','Smith','0812345678','John@gmail.com');
INSERT INTO customer(CustomerID,Password,Name,LName,PhoneNum,Email)
VALUES ('nf0002','fra8899','Franklin','Wong','0987654321','Franklin@gmail.com');
INSERT INTO customer(CustomerID,Password,Name,LName,PhoneNum,Email)
VALUES ('nf0003','aliciazelaya','Alicia','Zelaya','0822242368','Alicia@gmail.com');
INSERT INTO customer(CustomerID,Password,Name,LName,PhoneNum,Email)
VALUES ('nf0004','987654','Jennifer','Wallace','0955555555','Jennifer@gmail.com');
INSERT INTO customer(CustomerID,Password,Name,LName,PhoneNum,Email)
VALUES ('nf0005','asdfgh','Ramesh','Narayan','0900000000','Ramesh@gmail.com');
 

INSERT INTO pay(Code,Name)
VALUES ('C','Card');
INSERT INTO pay(Code,Name)
VALUES ('CC','Credit Card');

INSERT INTO genre(GenreID,GenreName)
VALUES ('g01','Drama');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g02','Sci-fi');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g03','Family');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g04','Animation');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g05','Fantasy');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g06','Documentary');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g07','Action');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g08','Adventure');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g09','Comedy');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g10','Crime');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g11','Thriller');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g12','Musicals');
INSERT INTO genre(GenreID,GenreName)
VALUES ('g13','Romance');



INSERT INTO producer(ProducerID,Name,Sex,Phone,Address)
VALUES ('p0001','Joyce','male','0822222222','5631,Rice,Houston,TX');
INSERT INTO producer(ProducerID,Name,Sex,Phone,Address)
VALUES ('p0002','Ahmad','male','0777777777','980,Dallas,Houston,TX');
INSERT INTO producer(ProducerID,Name,Sex,Phone,Address)
VALUES ('p0003','Davin','male','0999999999','450,Stone,Houston,TX');

INSERT INTO bill(BillID,Price,Tax,Total)
VALUES ('b0001','180','10','190');
INSERT INTO bill(BillID,Price,Tax,Total)
VALUES ('b0002','300','10','310');
INSERT INTO bill(BillID,Price,Tax,Total)
VALUES ('b0003','200','10','210');
INSERT INTO bill(BillID,Price,Tax,Total)
VALUES ('b0004','200','10','210');


INSERT INTO receipt(BillID,Date,Time)
VALUES ('b0001','2020-11-30','17.00');
INSERT INTO receipt(BillID,Date,Time)
VALUES ('b0002','2020-12-1','15.00');
INSERT INTO receipt(BillID,Date,Time)
VALUES ('b0003','2020-12-2','20.30');
INSERT INTO receipt(BillID,Date,Time)
VALUES ('b0004','2020-12-3','23.45');