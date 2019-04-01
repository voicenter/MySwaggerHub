CREATE TABLE Service
(
    ServiceID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ServiceName varchar(128),
    Description varchar(1024) DEFAULT '',
    ExternalDocsUrl varchar(512)
);