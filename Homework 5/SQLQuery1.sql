USE [SEDCHome]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[CreateGrade]
	
	@StudentID INT,
	@CourseID INT,
	@TeacherID INT,
	@Grade INT,
	@CreatedDate DATE,
	@Comment NVARCHAR(MAX) NULL
AS
BEGIN

	SET NOCOUNT ON;

	SELECT COUNT(*) AS TotalNumberOfGradesForStudent
	FROM Grade
	WHERE StudentID = @StudentID

	SELECT MAX(Grade) AS MaxGrade
	FROM Grade
	WHERE TeacherID = @TeacherID;
END
