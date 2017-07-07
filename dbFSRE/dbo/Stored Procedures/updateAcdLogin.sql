-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateAcdLogin] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update AL
	Set 
		AL.EMP_SK = ALS.EMP_SK
		,AL.ACD_GRP_ID = ALS.ACD_GRP_ID
		,AL.acd = ALS.acd
	From
		ACD_LOGIN AL JOIN ACD_LOGIN_STG ALS
			ON AL.ACD_LOGIN_ID = ALS.ACD_LOGIN_ID
			AND AL.ACD_INST_SK = ALS.ACD_INST_SK;
	
	Delete from ACD_LOGIN_STG;
END
