CREATE PROC [dbo].usp_demo
AS
BEGIN
	SELECT [id],[name],nickName from dbo.[UserInfo]
END
