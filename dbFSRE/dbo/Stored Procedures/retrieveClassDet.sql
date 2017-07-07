-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[retrieveClassDet] 
	-- Add the parameters for the stored procedure here
	@lobID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		 cd.[Week]
		 ,cs.ID
		 ,cs.siteID
		 ,[Site].[Site]
		 ,cs.[Class #]
		 ,cd.[Last Week]
		 ,cd.Phase
		 ,LOB.[FTE Definition]
		 ,cd.HC
		 ,cd.[Hours]
		 ,cd.AHT
		 ,cd.Concurrency
	From 
		SP_Class_Det cd join SP_Class_Set cs on cd.Class_ID = cs.ID
		join LOB on cs.lobID = LOB.ID
		join [Site] on [Site].ID = cs.siteID
	Where lobID = @lobID and cd.[Week] > GETDATE() - 7
	Order by cs.ID, cd.[Week]
END
