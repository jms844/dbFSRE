-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateUnits] 
	-- Add the parameters for the stored procedure here
	@prodID int = 0, 
	@yearNum int = 0,
	@monthNum smallint = 0,
	@unitCount int = 0,
	@activations int = 0,
	@deactivations int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Units
	Set 
		unitCount = @unitCount
		,activations = @activations
		,deactivations = @deactivations
	Where
		prodID = @prodID
		and yearNum = @yearNum
		and monthNum = @monthNum

	if @@ROWCOUNT = 0
		Insert into Units (prodID, yearNum, monthNum, unitCount, activations, deactivations)
		Values (@prodID, @yearNum, @monthNum, @unitCount, @activations, @deactivations)
END
