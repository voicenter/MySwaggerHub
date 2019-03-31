CREATE TABLE vc_telco_api_doc.Version
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
INSERT INTO vc_telco_api_doc.Version (VersionNumber, VersionName, VersionStatus, InfoDescription, InfoTitle, Host, SwaggerTemplate) VALUES (0.01, 'First Alpha Swagger ', 1, 'irst Alpha - Hope it will wok for yall :-)', 'vc_telco_API', 'vc_telco.voicenter.co', '{"host": "vc_telco.voicenter.co", "info": {"title": "", "contact": {}, "version": "", "description": "", "termsOfService": ""}, "paths": {}, "schemes": ["https"], "swagger": "2.0", "basePath": "/v1", "consumes": ["application/json"], "produces": ["application/json"], "definitions": {}, "securityDefinitions": {}}');