-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[insertClassDet] 
	-- Add the parameters for the stored procedure here
	@classID bigint = 0, 
	@week date = null,
	@lastWeek bit = null,
	@phase nvarchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into SP_Class_Det (Class_ID, [Week], [Last Week], Phase)
		Values(@classID, @week, @lastWeek, @phase)
END
