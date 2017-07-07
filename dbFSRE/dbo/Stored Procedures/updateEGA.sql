-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateEGA
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update TableExists
	Set 
		TableExists.EMP_SK = TableNew.EMP_SK
		,TableExists.EMP_GRP_NODE_SK = TableNew.EMP_GRP_NODE_SK
		,TableExists.START_NOM_DATE = TableNew.START_NOM_DATE
		,TableExists.STOP_NOM_DATE = TableNew.STOP_NOM_DATE
		,TableExists.LDR = TableNew.LDR
	From
		EMP_GRP_ASS TableExists JOIN EMP_GRP_ASS_STG TableNew
			ON TableExists.EMP_GRP_ASS_SK = TableNew.EMP_GRP_ASS_SK
	
	Delete from EMP_GRP_ASS_STG;
END
