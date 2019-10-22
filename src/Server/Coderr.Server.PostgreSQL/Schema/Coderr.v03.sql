﻿--ALTER TABLE Incidents ADD PRIMARY KEY (Id);
--ALTER TABLE ErrorReportOrigins    ADD CONSTRAINT FK_ErrorReportOrigins_Reports FOREIGN KEY (ReportId) REFERENCES ErrorReports (Id) ON DELETE CASCADE;
--ALTER TABLE ErrorReports  ADD CONSTRAINT FK_ErrorReports_Incidents FOREIGN KEY (IncidentId) REFERENCES Incidents (Id) ON DELETE CASCADE;
--ALTER TABLE CollectionMetadata   ADD CONSTRAINT FK_COLME_applicationId FOREIGN KEY (ApplicationId) REFERENCES Applications (Id) ON DELETE CASCADE;
--ALTER TABLE IncidentFeedback   ADD CONSTRAINT FK_IncidentFeedback_incidents FOREIGN KEY (IncidentId) REFERENCES Incidents (Id) ON DELETE CASCADE;
--ALTER TABLE Incidents   ADD CONSTRAINT FK_Incidents_applicationId FOREIGN KEY (ApplicationId) REFERENCES Applications (Id) ON DELETE CASCADE;
--ALTER TABLE IncidentTags   ADD CONSTRAINT FK_IncidentTags_incidentId FOREIGN KEY (IncidentId) REFERENCES Incidents (Id) ON DELETE CASCADE;
--ALTER TABLE ReportContextInfo   ADD CONSTRAINT FK_ReportContextInfo_incidentId FOREIGN KEY (IncidentId) REFERENCES Incidents (Id) ON DELETE CASCADE;
--ALTER TABLE IncidentContextCollections   ADD CONSTRAINT FK_ICC_incidentId FOREIGN KEY (IncidentId) REFERENCES Incidents (Id) ON DELETE CASCADE;
--ALTER TABLE UserNotificationSettings   ADD CONSTRAINT FK_UNS_accounts FOREIGN KEY (AccountId) REFERENCES Accounts (Id) ON DELETE CASCADE;
--ALTER TABLE Triggers  ADD CONSTRAINT FK_Triggers_applicationId FOREIGN KEY (ApplicationId) REFERENCES Applications (Id) ON DELETE CASCADE;

--DECLARE @ConstraintName nvarchar(200)
--SELECT @ConstraintName = KCU.CONSTRAINT_NAME
--FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS RC 
--INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU
--	ON KCU.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG  
--	AND KCU.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
--	AND KCU.CONSTRAINT_NAME = RC.CONSTRAINT_NAME
--WHERE
--	KCU.TABLE_NAME = 'ApplicationMembers' AND
--	KCU.COLUMN_NAME = 'AccountId'
--IF @ConstraintName IS NOT NULL
--BEGIN
--	EXEC('ALTER TABLE ApplicationMembers DROP CONSTRAINT ' + @ConstraintName)
--END;
--SELECT @ConstraintName = KCU.CONSTRAINT_NAME
--FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS AS RC 
--INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU
--	ON KCU.CONSTRAINT_CATALOG = RC.CONSTRAINT_CATALOG  
--	AND KCU.CONSTRAINT_SCHEMA = RC.CONSTRAINT_SCHEMA 
--	AND KCU.CONSTRAINT_NAME = RC.CONSTRAINT_NAME
--WHERE
--	KCU.TABLE_NAME = 'ApplicationMembers' AND
--	KCU.COLUMN_NAME = 'ApplicationId'
--IF @ConstraintName IS NOT NULL
--BEGIN
--	EXEC('ALTER TABLE ApplicationMembers DROP CONSTRAINT ' + @ConstraintName)
--END
--ALTER TABLE ApplicationMembers WITH CHECK ADD CONSTRAINT FK_AppMemb_Accounts FOREIGN KEY (AccountId) REFERENCES Accounts (Id) ON DELETE CASCADE;
--ALTER TABLE ApplicationMembers WITH CHECK ADD CONSTRAINT FK_AppMemb_Applications FOREIGN KEY (ApplicationId) REFERENCES Applications (Id) ON DELETE CASCADE;
