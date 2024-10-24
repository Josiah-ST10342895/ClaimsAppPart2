CREATE TABLE [dbo].[tblLecturer] (
    [Lecturer_ID]     VARCHAR (6)     NOT NULL,
    [Program_Code]    VARCHAR (7)     NOT NULL,
    [Module_Code]     VARCHAR (7)     NOT NULL,
    [Submission_Date] DATE            NOT NULL,
    [Hours_Worked]    INT             NOT NULL,
    [Salary_Rate]     DECIMAL (19, 2) NOT NULL,
    [Total]           DECIMAL (19, 2) NOT NULL,
    [File_Name ]      VARCHAR (50)    NULL,
    [File_Location]   VARCHAR (200)   NULL,
    [Claim_Status] NCHAR(10) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Lecturer_ID] ASC)
);

