-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[retrieveSPClasses] 
	-- Add the parameters for the stored procedure here
	@lobID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		siteID
		,[Site].[Site]
		,[Start Week]
		,[Class #]
		,[Weeks Training]
		,[Weeks Nesting]
		,[Weeks Tenure]
	 From SP_Class_Set Join Site on siteID = Site.ID
	 Where lobID = @lobID and GETDATE() < Dateadd(dd,7*([Weeks Training]+[Weeks Nesting]+[Weeks Tenure]),[Start Week])
END
