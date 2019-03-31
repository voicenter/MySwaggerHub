CREATE TABLE vc_telco_api_doc.VersionStatus
(
    VersionStatusID tinyint(4) PRIMARY KEY NOT NULL,
    VersionStatusName varchar(32)
);
INSERT INTO vc_telco_api_doc.VersionStatus (VersionStatusID, VersionStatusName) VALUES (1, 'Prudacion');
INSERT INTO vc_telco_api_doc.VersionStatus (VersionStatusID, VersionStatusName) VALUES (2, 'Beta');
INSERT INTO vc_telco_api_doc.VersionStatus (VersionStatusID, VersionStatusName) VALUES (3, 'Dev');
INSERT INTO vc_telco_api_doc.VersionStatus (VersionStatusID, VersionStatusName) VALUES (4, 'LTS');