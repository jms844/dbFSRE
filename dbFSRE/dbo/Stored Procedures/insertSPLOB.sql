-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[insertSPLOB] 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@week date = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into StaffPlan_LOB (lobID, [Week])
		Values(@lobID, @week)
END
