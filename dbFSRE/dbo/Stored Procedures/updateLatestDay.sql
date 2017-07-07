-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateLatestDay 
	-- Add the parameters for the stored procedure here
	@vendorID int = 0, 
	@latestDay datetime = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update
		recent.hSplitDay
	Set
		latestDay = Cast(@latestDay as date)
	Where
		vendorID = @vendorID
END
