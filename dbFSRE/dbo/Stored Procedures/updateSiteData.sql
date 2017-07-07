-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateSiteData 
	-- Add the parameters for the stored procedure here
	@p1 int = 0, 
	@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update sd
	Set
		sd.i_stafftime = sds.i_stafftime
		,sd.i_availtime = sds.i_availtime
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
		,sd.i_auxouttime = sds.i_auxouttime
		,sd.auxouttime = sds.auxouttime
		,sd.auxoutcalls = sds.auxoutcalls
		,sd.i_auxintime = sds.i_auxintime
		,sd.auxintime = sds.auxintime
		,sd.auxincalls = sds.auxincalls
		,sd.holdtime = sds.holdtime
		,sd.holdcalls = sds.holdcalls
		,sd.transferred = sds.transferred
		,sd.conference = sds.conference
		,sd.abntime = sds.abntime
		,sd.abncalls = sds.abncalls
		,sd.holdabncalls = sds.holdabncalls
		,sd.i_auxtime = sds.i_auxtime
		,sd.[Break] = sds.[Break]
		,sd.Meeting = sds.Meeting
		,sd.Lunch = sds.Lunch
		,sd.Lead = sds.Lead
		,sd.Closed = sds.Closed
		,sd.DCTR = sds.DCTR
		,sd.Coach_Meeting = sds.Coach_Meeting
		,sd.Train = sds.Train
		,sd.Project = sds.Project
		,sd.Personal = sds.Personal
		,sd.Computer = sds.Computer
		,sd.[Union] = sds.[Union]
		,sd.Outbound = sds.Outbound
		,sd.Mentoring = sds.Mentoring
		,sd.Aux = sds.Aux
		,sd.EOS = sds.EOS
		,sd.Chat = sds.Chat
		,sd.PCBootup = sds.PCBootup
	From
		siteData sd join siteDataStg sds
			on sd.row_date = sds.row_date
			and sd.interval = sds.interval
			and sd.DEPT_SK = sds.DEPT_SK
			and sd.SITE_SK = sds.SITE_SK;

	Delete from siteDataStg;
END
