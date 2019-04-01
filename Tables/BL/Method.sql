CREATE TABLE Method
(
    MethodID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ServiceID int(11) NOT NULL,
    MethodName varchar(32) DEFAULT '' NOT NULL,
    MethodPath varchar(128),
    Description varchar(1024),
    Summary varchar(1024),
    MinVersion double,
    MaxVersion double,
    OperationID varchar(32),
    MethodType tinyint(4) DEFAULT '2'
);