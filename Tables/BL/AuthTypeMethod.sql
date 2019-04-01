CREATE TABLE AuthTypeMethod
(
    AuthTypeMethodID int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    AuthTypeID int(11) NOT NULL,
    MethodID int(11) NOT NULL
);
CREATE UNIQUE INDEX AuthTypeMethod_AuthTypeID_MethodID_uindex ON AuthTypeMethod (AuthTypeID, MethodID);