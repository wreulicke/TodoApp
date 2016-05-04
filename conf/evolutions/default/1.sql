# DC schema
 
# --- !Ups


CREATE TABLE PROJECT (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME varchar(255) NOT NULL
);


CREATE TABLE TASK (
    ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
    STATUS integer NOT NULL,
    PROJECT integer NOT NULL,
    DESCRIPTION varchar(255) NOT NULL,
    FOREIGN KEY (PROJECT) REFERENCES PROJECT (ID)
);
INSERT INTO PROJECT values (0,'test');
INSERT INTO TASK (STATUS, PROJECT,DESCRIPTION) values (0,0,'testna'), (1,0,'testas'), (2,0,'testco');
  
 
# --- !Downs

DROP TABLE TASK;
DROP TABLE PROJECT;