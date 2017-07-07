-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateEmp 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update TableExists
	Set 
		TableExists.ID = TableNew.ID
		,TableExists.LAST_NAME = TableNew.LAST_NAME
		,TableExists.FIRST_NAME = TableNew.FIRST_NAME
		,TableExists.EFF_HIRE_NOM_DATE = TableNew.EFF_HIRE_NOM_DATE
		,TableExists.TERM_NOM_DATE = TableNew.TERM_NOM_DATE
		,TableExists.ACTIVE_FLAG = TableNew.ACTIVE_FLAG
		,TableExists.SHORT_NAME = TableNew.SHORT_NAME
		,TableExists.SORT_NAME = TableNew.SORT_NAME
		,TableExists.TIME_ZONE_SK = TableNew.TIME_ZONE_SK
		,TableExists.SENIORITY = TableNew.SENIORITY
		,TableExists.EMAIL_ADR = TableNew.EMAIL_ADR
		,TableExists.MEMO = TableNew.MEMO
		,TableExists.UPD_TCS_LOGIN_SK = TableNew.UPD_TCS_LOGIN_SK
		,TableExists.UPD_TS = TableNew.UPD_TS
		,TableExists.IM_USR_NAME = TableNew.IM_USR_NAME
	From
		EMP TableExists JOIN EMP_STG TableNew
			ON TableExists.EMP_SK = TableNew.EMP_SK
	
	Delete from EMP_STG;
END
