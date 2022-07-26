Create table USERS ( ID INTEGER UNIQUE AUTO_INCREMENT, FIRST_NAME VARCHAR(50), LAST_NAME varchar(50) );

DROP TABLE LIKES;

insert into USERS (FIRST_NAME, LAST_NAME) values ("Daenerys","Targaryen"),("Jon","Snow"),("Tyrion","Lannister"),("Khal","Drogo");
select * from users;

create table POSTS ( ID INTEGER UNIQUE AUTO_INCREMENT, CONTENT varchar(50) );

ALTER TABLE POSTS ADD COLUMN USER_ID INTEGER, ADD CONSTRAINT FOREIGN KEY (USER_ID) REFERENCES USERS(ID);

insert into posts (content, user_id) values ("My First post", 2);

select * from posts;

CREATE TABLE LIKES ( ID INTEGER UNIQUE AUTO_INCREMENT, USER_ID INTEGER, POST_ID INTEGER, FOREIGN KEY (USER_ID) REFERENCES USERS(ID), FOREIGN KEY (POST_ID) REFERENCES POSTS(ID));


insert into LIKES (USER_ID, POST_ID) values (4, 1);

SELECT * FROM LIKES;