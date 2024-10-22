CREATE TABLE [dbo].[tblLecturer]
(
	[Lecturer_ID] VARCHAR(6) NOT NULL PRIMARY KEY, 
    [Program_Code] VARCHAR(7) NOT NULL, 
    [Module_Code] VARCHAR(7) NOT NULL, 
    [Submission_Date] DATE NOT NULL, 
    [Hours_Worked] INT NOT NULL, 
    [Salary_Rate] DECIMAL(19, 2) NOT NULL, 
    [Total] DECIMAL(19, 2) NULL
)


