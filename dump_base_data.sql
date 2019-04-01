## AuthType
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (0, 'None');
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (1, 'Basic');
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (2, 'Editor');
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (3, 'Admin');


## MethodType
INSERT INTO MethodType (MethodTypeID, MethodTypeName) VALUES (1, 'get');
INSERT INTO MethodType (MethodTypeID, MethodTypeName) VALUES (2, 'post');

## MethodParameterPlace
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('Url');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('Resquest');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('Response');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('RequestBody');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('ResponseBody');

## ParameterPermissionType
INSERT INTO ParameterPermissionType (ParameterPermissionTypeName) VALUES ('None');
INSERT INTO ParameterPermissionType (ParameterPermissionTypeName) VALUES ('Account');
INSERT INTO ParameterPermissionType (ParameterPermissionTypeName) VALUES ('User');

## ParameterType
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

## PermissionEntityType
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (0, 'None');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (1, 'Admin');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (2, 'Partner');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (3, 'Account');
INSERT INTO PermissionEntityType (PermissionEntityTypeID, PermissionEntityTypeName) VALUES (4, 'User');