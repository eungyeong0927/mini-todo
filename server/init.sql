create database codingon default character set utf8 collate utf8_general_ci

SHOW databases;

use codingon;

DROP TABLE IF exists todo;

CREATE TABLE Todo(
id INT NOT NULL PRIMARY KEY auto_increment,
title VARCHAR(100) NOT NULL,
done BOOLEAN NOT NULL DEFAULT false
);

DESC todo;

SELECT * from todo;

INSERT INTO todo VALUES (null, "my todo1",0);
INSERT INTO todo VALUES (null, "my todo2",1);
INSERT INTO todo VALUES (null, "my todo3",0);
INSERT INTO todo VALUES (null, "my todo4",1);
INSERT INTO todo VALUES (null, "my todo5",0);
INSERT INTO todo VALUES (null, "my todo6",0);

update todo SET title = "내가 할일 4번" WHERE id = 4;

delete from todo where id = 3;

select * from mysql.user;

CREATE USER 'user'@'%' identified By "1234";
CREATE USER 'user'@'%' identified with mysql_native_password BY "1234";

GRANT ALL privileges on *.* TO 'user'@'%' with grant option;

FLUSH privileges;