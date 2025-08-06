-- ************************************** calendar
CREATE TABLE calendar
(
 order_date date NOT NULL,
 ship_date  date NOT NULL,
 year       int4range NOT NULL,
 quarter    varchar(15) NOT NULL,
 month      int4range NOT NULL,
 week       int4range NOT NULL,
 week_day   int4range NOT NULL,
 CONSTRAINT PK_4 PRIMARY KEY ( order_date, ship_date )
);


-- ************************************** geography
CREATE TABLE geography
(
 geo_id      int NOT NULL,
 country     varchar(15) NOT NULL,
 city        varchar(17) NOT NULL,
 "state"     varchar(11) NOT NULL,
 region      varchar(7) NOT NULL,
 postal_code int4range NOT NULL,
 CONSTRAINT PK_3_1 PRIMARY KEY ( geo_id )
);


-- ************************************** product
CREATE TABLE product
(
 product_id   int NOT NULL,
 category     varchar(15) NOT NULL,
 subcategory  varchar(15) NOT NULL,
 segment      varchar(15) NOT NULL,
 product_name varchar(130) NOT NULL,
 CONSTRAINT PK_3 PRIMARY KEY ( product_id )
);


-- ************************************** sales
CREATE TABLE sales
(
 row_id     int4range NOT NULL,
 order_id   varchar(15) NOT NULL,
 sales      numeric(9,4) NOT NULL,
 quantity   int4range NOT NULL,
 discount   numeric(4,2) NOT NULL,
 profit     numeric(12,16) NOT NULL,
 product_id int NOT NULL,
 geo_id     int NOT NULL,
 order_date date NOT NULL,
 ship_date  date NOT NULL,
 ship_id    int NOT NULL,
 CONSTRAINT PK_2 PRIMARY KEY ( row_id ),
 CONSTRAINT FK_1 FOREIGN KEY ( product_id ) REFERENCES product ( product_id ),
 CONSTRAINT FK_2 FOREIGN KEY ( geo_id ) REFERENCES geography ( geo_id ),
 CONSTRAINT FK_3 FOREIGN KEY ( order_date, ship_date ) REFERENCES calendar ( order_date, ship_date ),
 CONSTRAINT FK_4 FOREIGN KEY ( ship_id ) REFERENCES shipping ( ship_id )
);

-- ************************************** shipping
CREATE TABLE shipping
(
 ship_id   int NOT NULL,
 ship_mode varchar(15) NOT NULL,
 CONSTRAINT PK_5 PRIMARY KEY ( ship_id )
);