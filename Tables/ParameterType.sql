CREATE TABLE ParameterType
(
    ParameterTypeID tinyint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ParameterTypeName varchar(32),
    ParameterTypeTag varchar(16),
    ParameterTypeFormat varchar(25),
    ParameterTypeMin int(11),
    ParameterTypeMax int(11),
    ParameterTypePatternRegex varchar(512)
);
CREATE INDEX ParameterTypeID ON ParameterType (ParameterTypeID);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('string', 'string', '', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Integer', 'integer', null, null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('DateTime', 'string', 'date-time', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Date', 'string', 'date', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Array', 'array', null, null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('URL', 'string', 'uri', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('FilePath', 'string', null, null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('IPV4', 'string', 'ipv4', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Email', 'string', 'email', null, null, '^[a-zA-Z0-9.!##$#%&''*+/=?^#_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:#\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$');
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('PhoneNumber', 'number', null, null, null, '^((\\+\\d{1,3}(-| )?\\(?\\d\\)?(-| )?\\d{1,5})|(\\(?\\d{2,6}\\)?))(-| )?(\\d{3,4})(-| )?(\\d{4})(( x| ext)\\d{1,5}){0,1}$');
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Password', 'string', 'password', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Object', 'object', null, null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('ObjectList', 'array', null, null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Token', 'string', null, null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Domain', 'string', 'hostname', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('IPV6', 'string', 'ipv6', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('FileBinary', 'string', 'binary', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('FileBase64', 'string', 'byte', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Number', 'number', '', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('NumberFloat', 'number', 'float', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('NumberDouble', 'integer', 'double', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Integer32', 'integer', 'int32', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Integer64', 'integer', 'int64', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('UUID', 'string', 'uuid', null, null, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('Status', 'integer', null, 0, 1, null);
INSERT INTO ParameterType (ParameterTypeName, ParameterTypeTag, ParameterTypeFormat, ParameterTypeMin, ParameterTypeMax, ParameterTypePatternRegex) VALUES ('ArrayInt', 'array', null, null, null, null);