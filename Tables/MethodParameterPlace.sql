CREATE TABLE MethodParameterPlace
(
    MethodParameterPlaceID tinyint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    MethodParameterPlaceName varchar(32)
);
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('Url');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('Resquest');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('Response');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('RequestBody');
INSERT INTO MethodParameterPlace (MethodParameterPlaceName) VALUES ('ResponseBody');