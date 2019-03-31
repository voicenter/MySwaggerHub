CREATE TABLE AuthType
(
    AuthTypeID tinyint(4) PRIMARY KEY NOT NULL,
    AuthTypeName varchar(24)
);
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (0, 'None');
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (1, 'Basic');
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (2, 'Editor');
INSERT INTO AuthType (AuthTypeID, AuthTypeName) VALUES (3, 'Admin');