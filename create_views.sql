/* 
Use these DDL statements to create views for each datatype exported by EDR, you might not be interested in all of them, not all of them may be populated depending
on the situation, so feel free to pick the ones you find most useful.

Note that Athena seemingly only allows you to run one SQL statement at a time, so you will need to run these individually, not all in one go.
*/


/* DNS Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.dns AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         time,
         name
FROM interceptx_edr.exported_snapshot
WHERE type='Dns';

/* File Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.file AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         accessEndTime,
         operationType,
         filePath,
         driveType,
         targetFilePath,
         targetDriveType
FROM interceptx_edr.exported_snapshot
WHERE type='File'

/* HbtBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.HbtBeacon AS
SELECT "$path" AS data_source,
         type,
         time,
         pid,
         alertType,
         processPath,
         driveType
FROM interceptx_edr.exported_snapshot
WHERE type='HbtBeacon'

/* HmpaBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.HmpaBeacon AS
SELECT "$path" AS data_source,
         type,
         productId,
         version,
         os,
         cpu,
         uid,
         computer,
         time,
         alertType,
         alertDetails,
         pid,
         processName,
         processPath,
         driveType,
         processSha256
FROM interceptx_edr.exported_snapshot
WHERE type='HmpaBeacon'

/* Image Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.Image AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         loadTime,
         loadAddress,
         imageSize,
         imagePath,
         driveType,
         fileSize,
         sha1Hash,
         sha256Hash
FROM interceptx_edr.exported_snapshot
WHERE type='Image'

/* IpsBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.IpsBeacon AS
SELECT "$path" AS data_source,
         type,
         time,
         pid,
         alertType,
         processPath,
         driveType
FROM interceptx_edr.exported_snapshot
WHERE type='IpsBeacon'

/* IPv4Address Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.IPv4Address AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         startTime,
         endTime,
         connectionType,
         srcAddress,
         srcPort,
         destAddress,
         destPort,
         dataSent,
         dataReceived
FROM interceptx_edr.exported_snapshot
WHERE type='IPv4Address'

/* IPv6Address Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.IPv6Address AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         startTime,
         endTime,
         connectionType,
         srcAddress,
         srcPort,
         destAddress,
         destPort,
         dataSent,
         dataReceived
FROM interceptx_edr.exported_snapshot
WHERE type='IPv6Address'

/* MtdBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.MtdBeacon AS
SELECT "$path" AS data_source,
         type,
         time,
         pid,
         alertType,
         processPath,
         driveType
FROM interceptx_edr.exported_snapshot
WHERE type='MtdBeacon'

/* Process Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.Process AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         startTime,
         stopTime,
         ppidStart,
         ptidStart,
         processName,
         driveType,
         commandLine,
         windowsSessionId,
         fileSize,
         sha1Hash,
         sha256Hash,
         user,
         userSid
FROM interceptx_edr.exported_snapshot
WHERE type='Process'

/* RcaRequestedBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.RcaRequestedBeacon AS
SELECT "$path" AS data_source,
         type,
         filePath,
         driveType,
         sha256
FROM interceptx_edr.exported_snapshot
WHERE type='RcaRequestedBeacon'

/* Registry Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.Registry AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         time,
         operationType,
         path
FROM interceptx_edr.exported_snapshot
WHERE type='Registry'

/* SavBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.SavBeacon AS
SELECT "$path" AS data_source,
         type,
         beaconType,
         time,
         threatName,
         processName,
         processDriveType,
         filePath,
         fileDriveType,
         childProcessName,
         childProcessDriveType,
         pid,
         childPid,
         threadId,
         operation,
         keyPath,
         valueName,
         url
FROM interceptx_edr.exported_snapshot
WHERE type='SavBeacon'

/* SavLogBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.SavLogBeacon AS
SELECT "$path" AS data_source,
         type,
         time,
         data
FROM interceptx_edr.exported_snapshot
WHERE type='SavLogBeacon'

/* SspBeacon Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.SspBeacon AS
SELECT "$path" AS data_source,
         type,
         time,
         alertType,
         filePath,
         driveType
FROM interceptx_edr.exported_snapshot
WHERE type='SspBeacon'

/* Thread Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.Thread AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         startTime,
         stopTime,
         ppidStart,
         ptidStart,
         startAddress,
         isRemote,
         isSystem,
         windowsServiceId,
         imageStartedIn,
         imageDriveType
FROM interceptx_edr.exported_snapshot
WHERE type='Thread'

/* URL Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.Url AS
SELECT "$path" AS data_source,
         type,
         pidStart,
         tidStart,
         time,
         url
FROM interceptx_edr.exported_snapshot
WHERE type='Url'

/* WinEventAuth Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.WinAuthEvent AS
SELECT "$path" AS data_source,
         type,
         authType,
         time,
         userSid,
         userName,
         domainName,
         logonType,
         ipAddress,
         port
FROM interceptx_edr.exported_snapshot
WHERE type='WinEventAuth'

/* FileReputation Data Type View */

CREATE
        OR REPLACE VIEW interceptx_edr.FileReputation AS
SELECT "$path" AS data_source,
         type,
         sha256Hash,
         reputation,
         reputationSource,
         reputationExpiryTime
FROM interceptx_edr.exported_snapshot
WHERE type='FileReputation'
