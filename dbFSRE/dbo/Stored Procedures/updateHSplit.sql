-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateHSplit 
	-- Add the parameters for the stored procedure here
--	@p1 int = 0, 
--	@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update sd
	Set
		sd.i_availtime = sds.i_availtime
		,sd.i_ringtime = sds.i_ringtime
		,sd.ringtime = sds.ringtime
		,sd.ringcalls = sds.ringcalls
		,sd.i_acdtime = sds.i_acdtime
		,sd.acdtime = sds.acdtime
		,sd.acdcalls = sds.acdcalls
		,sd.i_acwtime = sds.i_acwtime
		,sd.acwtime = sds.acwtime
		,sd.i_acwouttime = sds.i_acwouttime
		,sd.acwouttime = sds.acwouttime
		,sd.acwoutcalls = sds.acwoutcalls
		,sd.i_acwintime = sds.i_acwintime
		,sd.acwintime = sds.acwintime
		,sd.acwincalls = sds.acwincalls
		,sd.i_auxtime = sds.i_auxtime
		,sd.i_auxouttime = sds.i_auxouttime
		,sd.auxouttime = sds.auxouttime
		,sd.auxoutcalls = sds.auxoutcalls
		,sd.i_auxintime = sds.i_auxintime
		,sd.auxintime = sds.auxintime
		,sd.auxincalls = sds.auxincalls
		,sd.i_othertime = sds.i_othertime
		,sd.i_acdothertime = sds.i_acdothertime
		,sd.holdtime = sds.holdtime
		,sd.holdcalls = sds.holdcalls
		,sd.holdabncalls = sds.holdabncalls
		,sd.transferred = sds.transferred
		,sd.conference = sds.conference
		,sd.abncalls = sds.abncalls
		,sd.abntime = sds.abntime
		,sd.acceptable = sds.acceptable
		,sd.i_arrived = sds.i_arrived
		,sd.dequecalls = sds.dequecalls
		,sd.busycalls = sds.busycalls
		,sd.disccalls = sds.disccalls
		,sd.outflowcalls = sds.outflowcalls
		,sd.anstime = sds.anstime

	From
		hSplit sd join hSplitStg sds
			on sd.row_date = sds.row_date
			and sd.interval = sds.interval
			and sd.vendorID = sds.vendorID
			and sd.acd = sds.acd
			and sd.split = sds.split;

	Delete from hSplitStg;
END
