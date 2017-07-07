-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateForGrp 
	-- Add the parameters for the stored procedure here
	@For_Grp_SK numeric(15,1) = 0,
	@Code as nvarchar(30) = null,
	@lobID as int = 0,
	@vendorID as int = 0,
	@Time_Zone_SK as numeric(15,1) = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update For_Grp
	Set
		CODE = @Code
		,LOB_ID = @lobID
		,Vendor_ID = @vendorID
		,TIME_ZONE_SK = @Time_Zone_SK
	Where
		FOR_GRP_SK = @For_Grp_SK
END
