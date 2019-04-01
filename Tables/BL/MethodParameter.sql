CREATE TABLE MethodParameter
(
    MethodParameterID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    MethodID int(11) DEFAULT '0' NOT NULL,
    MethodParameterPlace tinyint(4) DEFAULT '1',
    MethodParameterName varchar(64),
    ParameterType tinyint(4),
    ParameterObject int(11) DEFAULT '0',
    MinVersion double DEFAULT '0',
    MaxVersion double DEFAULT '1000',
    MethodParameterOrder int(11) DEFAULT '10',
    Required tinyint(1) DEFAULT '0' NOT NULL,
    Description varchar(1024) DEFAULT '' NOT NULL,
    Example varchar(1024),
    ParameterPermissionType int(11) DEFAULT '0'
);
CREATE UNIQUE INDEX MethodParameterPlaceName_pk ON MethodParameter (MethodID, MethodParameterPlace, MethodParameterName);