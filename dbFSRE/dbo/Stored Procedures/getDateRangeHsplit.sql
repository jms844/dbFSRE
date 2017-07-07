-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[getDateRangeHsplit] 
	-- Add the parameters for the stored procedure here
	@vendorID tinyint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select Top 90
		Datedef.row_date
	From
		recent.hSplitDay hd Join DateDef
			on hd.latestDay < DateDef.row_date
	Where
		DateDef.row_date < Cast(GETDATE() as date)
		and hd.vendorID = @vendorID
	order by Datedef.row_date
END
