CREATE TABLE VersionStatus
(
    VersionStatusID tinyint(4) PRIMARY KEY NOT NULL,
    VersionStatusName varchar(32)
);
INSERT INTO VersionStatus (VersionStatusID, VersionStatusName) VALUES (1, 'Prudacion');
INSERT INTO VersionStatus (VersionStatusID, VersionStatusName) VALUES (2, 'Beta');
INSERT INTO VersionStatus (VersionStatusID, VersionStatusName) VALUES (3, 'Dev');
INSERT INTO VersionStatus (VersionStatusID, VersionStatusName) VALUES (4, 'LTS');