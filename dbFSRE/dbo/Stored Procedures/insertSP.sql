-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE insertSP 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@siteID int = 0,
	@weekVal Date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into StaffPlan (lobID, siteID, [Week])
		Values(@lobID, @siteID, @weekVal)
END
