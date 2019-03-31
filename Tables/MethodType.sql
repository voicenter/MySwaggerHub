CREATE TABLE MethodType
(
    MethodTypeID tinyint(4) PRIMARY KEY NOT NULL,
    MethodTypeName varchar(8)
);
INSERT INTO MethodType (MethodTypeID, MethodTypeName) VALUES (1, 'get');
INSERT INTO MethodType (MethodTypeID, MethodTypeName) VALUES (2, 'post');