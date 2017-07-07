-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateAcdData] 
	-- Add the parameters for the stored procedure here
	@rowdate date = null, 
	@interval datetime2(0) = null,
	@vendorID int = 0,
	@lobID int = 0,
	@acd bigint = 0,
	@acw bigint = 0,
	@acwout bigint = 0,
	@acwin bigint = 0,
	@aux bigint = 0,
	@auxin bigint = 0,
	@auxout bigint = 0,
	@other bigint = 0,
	@acdother bigint = 0,
	@acdcalls bigint = 0,
	@anstime bigint = 0,
	@abncalls bigint = 0,
	@abntime bigint = 0,
	@acceptable bigint = 0,
	@NCO bigint = 0,
	@onCall bigint = 0,
	@acdtime bigint = 0,
	@holdtime bigint = 0,
	@acwtime bigint = 0,
	@i_arrived bigint = 0,
	@busycalls bigint = 0,
	@disccalls bigint = 0,
	@outflowcalls bigint = 0,
	@dequecalls bigint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update AcdData
	Set
		i_acdtime = @acd
		,i_acwtime = @acw
		,i_acwouttime = @acwout
		,i_acwintime = @acwin
		,i_auxtime = @aux
		,i_auxintime = @auxin
		,i_auxouttime = @auxout
		,i_othertime = @other
		,i_acdothertime = @acdother
		,acdcalls = @acdcalls
		,anstime = @anstime
		,abncalls = @abncalls
		,abntime = @abntime
		,acceptable = @acceptable
		,NCO = @NCO
		,OnCall = @onCall
		,acdtime = @acdtime
		,holdtime = @holdtime
		,acwtime = @acwtime
		,i_arrived = @i_arrived
		,busycalls = @busycalls
		,disccalls = @disccalls
		,outflowcalls = @outflowcalls
		,dequecalls = @dequecalls
	Where
		row_date = @rowdate and interval = @interval and vendorID = @vendorID and LOB_ID = @lobID
END
