-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateEGN
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update TableExists
	Set 
		TableExists.EMP_GRP_TREE_SK = TableNew.EMP_GRP_TREE_SK
		,TableExists.CODE = TableNew.CODE
		,TableExists.DESCR = TableNew.DESCR
		,TableExists.LEFT_VISIT_NUM = TableNew.LEFT_VISIT_NUM
		,TableExists.RIGHT_VISIT_NUM = TableNew.RIGHT_VISIT_NUM
		,TableExists.ALLOW_ASS_FLAG = TableNew.ALLOW_ASS_FLAG
		,TableExists.ALLOW_LDR_FLAG = TableNew.ALLOW_LDR_FLAG
		,TableExists.EMP_GRP_CLASS_SK = TableNew.EMP_GRP_CLASS_SK
		,TableExists.UPD_TCS_LOGIN_SK = TableNew.UPD_TCS_LOGIN_SK
		,TableExists.UPD_TS = TableNew.UPD_TS
	From
		EMP_GRP_NODE TableExists JOIN EMP_GRP_NODE_STG TableNew
			ON TableExists.EMP_GRP_NODE_SK = TableNew.EMP_GRP_NODE_SK
	
	Delete from EMP_GRP_NODE_STG;
END
