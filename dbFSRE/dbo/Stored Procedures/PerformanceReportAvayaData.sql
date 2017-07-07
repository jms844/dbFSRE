-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE PerformanceReportAvayaData 
	-- Add the parameters for the stored procedure here
	@dayOffset int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select
	 row_date
	 ,al.EMP_SK
	 ,EGA.EMP_GRP_NODE_SK
	 ,sum(acdcalls)acdcalls
	 ,sum(abncalls)abncalls
	 ,sum(ti_availtime)ti_availtime
	 ,sum(i_ringtime)i_ringtime
	 ,sum(i_acdtime)i_acdtime
	 ,sum(i_acwtime)i_acwtime
	 ,sum(i_auxintime)i_auxintime
	 ,sum(i_auxouttime)i_auxouttime
	 ,sum(i_acdothertime)i_acdothertime
	 ,sum(ti_auxtime10)ti_auxtime10
	 ,sum(ti_auxtime11)ti_auxtime11
	 ,sum(ti_auxtime12)ti_auxtime12
	 ,sum(ti_auxtime13)ti_auxtime13
	 ,sum(ti_auxtime14)ti_auxtime14
	 ,sum(ti_auxtime15)ti_auxtime15
	 ,sum(ti_auxtime19)ti_auxtime19
	 ,sum(ti_auxtime20)ti_auxtime20
	 ,sum(ti_auxtime21)ti_auxtime21
	 ,sum(ti_auxtime22)ti_auxtime22
	 ,sum(ti_auxtime23)ti_auxtime23
	 ,sum(ti_auxtime24)ti_auxtime24
	 ,sum(ti_auxtime25)ti_auxtime25
	 ,sum(ti_auxtime27)ti_auxtime27
	 ,sum(ti_auxtime30)ti_auxtime30
	 ,sum(ti_auxtime33)ti_auxtime33
	 ,sum(ti_auxtime41)ti_auxtime41
	 ,sum(ti_auxtime64)ti_auxtime64
	From
	 hAgent Join ACD_LOGIN al
	  on hAgent.acd = al.acd
	  and hAgent.logid = al.ACD_LOGIN_ID
	 Join EMP_GRP_ASS EGA
	  on al.EMP_SK = EGA.EMP_SK
	  and hAgent.row_date between dateadd(DD,EGA.START_NOM_DATE,'1899-12-30') AND DATEADD(DD,EGA.STOP_NOM_DATE,'1899-12-30')
	Where
	 Year(row_date) = Year(DATEADD(DD,@dayOffset,GETDATE()))
	 and Month(row_date) = Month(DATEADD(DD,@dayOffset,GETDATE()))
	 and EGA.EMP_GRP_NODE_SK in (-979769224414,-979049589299,-989888806859,-979572517417,-979772003283,-989998497028,-989947014844,-989998497033,-989837853934,-979772003249,-989999602490,-979227621555,-979226986574,-979227624542,-979049589320,-979227621918,-979008961878,-979227622232,-978858551515,-978858550294,-978858552282,-978858552951,-969846084475,-969985827190,-969986971578,-979021682995,-978905934756,-969958609234,-969958609185,-979649319939)
	Group by
	 row_date
	 ,al.EMP_SK
	 ,EGA.EMP_GRP_NODE_SK
END
