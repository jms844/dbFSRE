-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE getUpdateDateRange 
	-- Add the parameters for the stored procedure here
	@vendorID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select
		row_date
	From
		DateDef Join recent.hSplitDay hd
			on DateDef.row_date > hd.latestDay
			and hd.vendorID = @vendorID
	Where
		row_date < Cast(GETDATE() as date);
END
