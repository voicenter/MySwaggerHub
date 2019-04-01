CREATE TABLE Object
(
    ObjectID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ObjectName varchar(64),
    ObjectTagName varchar(64),
    MinVersion double,
    MaxVersion double
);