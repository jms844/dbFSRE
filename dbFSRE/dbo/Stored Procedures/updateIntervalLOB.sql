-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	Update LOB
-- =============================================
CREATE PROCEDURE updateIntervalLOB 
	-- Add the parameters for the stored procedure here
	@row_date date, 
	@starttime int,
	@vendorID int,
	@oldLobID int,
	@newLobID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update WFM_Metrics
		Set LOB_ID = @newLobID
	Where
		row_date = @row_date
		and starttime = @starttime
		and Vendor_ID = @vendorID
		and LOB_ID = @oldLobID
END
