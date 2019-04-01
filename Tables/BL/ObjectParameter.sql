CREATE TABLE ObjectParameter
(
    ObjectParameterID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ObjectParameterName varchar(64),
    ParameterType tinyint(4),
    ParameterObject int(11) DEFAULT '0',
    SubObject int(11),
    MaxVersion double,
    ObjectParameterOrder int(11) DEFAULT '10',
    Required tinyint(1) DEFAULT '0',
    Description varchar(1024) DEFAULT '',
    Example varchar(1024) DEFAULT '',
    MinVersion double,
    ParameterPermissionType int(11) DEFAULT '0'
);
CREATE UNIQUE INDEX ObjectParameter_ObjectParameterID_pk ON ObjectParameter (ObjectParameterID);