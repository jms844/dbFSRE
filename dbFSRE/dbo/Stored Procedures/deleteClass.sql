-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE deleteClass 
	-- Add the parameters for the stored procedure here
	@lobID int = 0,
	@siteID int = 0,
	@startWeek date = null,
	@classNum int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete
	From SP_Class_Set
	Where lobID = @lobID and siteID = @siteID and [Start Week] = @startWeek and [Class #] = @classNum
END
