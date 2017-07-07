-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	Procedure for updating phone ID values
-- =============================================
CREATE PROCEDURE updatePhoneID 
	-- Add the parameters for the stored procedure here
	@ACD_INST_SK numeric(15,1), 
	@ACD_LOGIN_ID nvarchar(20),
	@EMP_SK numeric(15,1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Phone_ID
	set EMP_SK = @EMP_SK
	WHERE ACD_INST_SK = @ACD_INST_SK
		AND ACD_LOGIN_ID = @ACD_LOGIN_ID
END
