create PROCEDURE [dbo].[usp_create_user]
	@user_name varchar(32)
AS
BEGIN
	--create user xdf
	ALTER USER Mary51 WITH DEFAULT_SCHEMA = Purchasing;
END
