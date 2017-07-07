-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE getIDPbyElement 
	-- Add the parameters for the stored procedure here
	@IDP_SK numeric(15,1), 
	@STF_GRP_SK numeric(15,1),
	@Element as nvarchar(30)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	From IDP_DET
	Where IDP_SK = @IDP_SK and STF_GRP_SK = @STF_GRP_SK and [Element] = @Element
	Order by [Period];
END
