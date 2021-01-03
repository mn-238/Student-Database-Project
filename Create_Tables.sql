CREATE DATABASE database_students;
USE database_students;
create table students(
   id INT NOT NULL AUTO_INCREMENT,
   fname VARCHAR(30) NOT NULL,
   lname VARCHAR(30) NOT NULL,
   phone VARCHAR(12) NOT NULL,
   PRIMARY KEY (id )
);

create table professors(
   id INT NOT NULL AUTO_INCREMENT,
   fname VARCHAR(30) NOT NULL,
   lname VARCHAR(30) NOT NULL,
   phone VARCHAR(12) NOT NULL,
   PRIMARY KEY (id )
);

create table classes(
   id INT NOT NULL AUTO_INCREMENT,
   coursecode VARCHAR(10),
   description VARCHAR(100),
   PRIMARY KEY (id )
);

CREATE TABLE timetable (
    id INT NOT NULL AUTO_INCREMENT,
    studentid int,
    classid int,
    professorid int,
    days VARCHAR(10),
    times VARCHAR(6),
    PRIMARY KEY (id),
    FOREIGN KEY (studentid) REFERENCES students(id),
    FOREIGN KEY (classid) REFERENCES classes(id),
    FOREIGN KEY (professorid) REFERENCES professors(id)
);

INSERT INTO timetable VALUES (null,10,3,"mwf","0900",4);
INSERT INTO timetable VALUES (null,6,3,"mwf","0900",4);
INSERT INTO timetable VALUES (null,4,3,"mwf","0900",4);
INSERT INTO timetable VALUES (null,4,1,"tuth","1500",4);
INSERT INTO timetable VALUES (null,3,1,"tuth","1500",4);