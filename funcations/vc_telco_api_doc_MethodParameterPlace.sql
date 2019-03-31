CREATE TABLE vc_telco_api_doc.MethodParameterPlace
(
    MethodParameterPlaceID tinyint(4) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    MethodParameterPlaceName varchar(32)
);
INSERT INTO vc_telco_api_doc.MethodParameterPlace (MethodParameterPlaceName) VALUES ('Url');
INSERT INTO vc_telco_api_doc.MethodParameterPlace (MethodParameterPlaceName) VALUES ('Resquest');
INSERT INTO vc_telco_api_doc.MethodParameterPlace (MethodParameterPlaceName) VALUES ('Response');
INSERT INTO vc_telco_api_doc.MethodParameterPlace (MethodParameterPlaceName) VALUES ('RequestBody');
INSERT INTO vc_telco_api_doc.MethodParameterPlace (MethodParameterPlaceName) VALUES ('ResponseBody');