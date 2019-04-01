CREATE TABLE Version
(
    VersionID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    VersionNumber double DEFAULT '0.1',
    VersionName varchar(32),
    VersionStatus tinyint(4),
    InfoDescription varchar(1024),
    InfoTitle varchar(64),
    Host varchar(32),
    SwaggerTemplate json
);