-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateSPLOB 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@week date = null,
	@runRate numeric(5,4) = null,
	@foreVolume bigint = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update StaffPlan_LOB
		Set [Run Rate %] = @runRate,
			[Forecast Volume] = @foreVolume
	Where
		lobID = @lobID and [Week] = @week
END
