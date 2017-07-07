-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateEmpGrp 
	-- Add the parameters for the stored procedure here
	@Emp_Grp_Node_SK numeric(15,1) = 0,
	@Code as nvarchar(30) = null,
	@lobID as int = 0,
	@vendorID as int = 0,
	@siteID as int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Emp_Grp
	Set
		CODE = @Code
		,lobID = @lobID
		,vendorID = @vendorID
		,siteID = @siteID
	Where
		EMP_GRP_NODE_SK = @Emp_Grp_Node_SK
END
