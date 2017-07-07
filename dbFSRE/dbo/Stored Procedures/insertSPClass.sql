-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE insertSPClass 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@siteID int = 0,
	@startWeek date = null,
	@classNum int = null,
	@wksTrain int = 0,
	@wksNest int = 0,
	@wksTen int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into SP_Class_Set (lobID, siteID, [Start Week], [Class #], [Weeks Training], [Weeks Nesting], [Weeks Tenure])
		Values(@lobID, @siteID, @startWeek, @classNum, @wksTrain, @wksNest, @wksTen);
	SELECT ID from SP_Class_Set Where lobID = @lobID and siteID = @siteID and [Start Week] = @startWeek and [Class #] = @classNum
END
