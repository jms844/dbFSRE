-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE getOccupacyFields45Days
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select
		ha.row_date
		,ha.interval
		,GROUPS1.CODE [SITE]
		,LOB.LOB
		,Sum(ha.i_availtime) [Avail]
		,Sum(ha.i_acdtime) [Talk]
		,Sum(ha.i_acwtime) [Wrap]
		,Sum(ha.i_auxintime) [Auxin]
		,Sum(ha.i_auxouttime) [Auxout]
		,Sum(ha.i_acdothertime) [Hold]
		,Sum(ha.i_othertime) [Other]
	
	From
		hAgent ha Join ACD_LOGIN AL
			on ha.logid = AL.ACD_LOGIN_ID
		Join (
			SELECT
				EGA.EMP_SK
				,EGA.START_NOM_DATE
				,EGA.STOP_NOM_DATE
				,EGN.EMP_GRP_NODE_SK
				,EGN.CODE
			FROM
				EMP_GRP_ASS EGA JOIN EMP_GRP_NODE EGN
					ON EGA.EMP_GRP_NODE_SK = EGN.EMP_GRP_NODE_SK
					AND EMP_GRP_CLASS_SK = -989999872669
		) GROUPS1
			ON AL.EMP_SK = GROUPS1.EMP_SK
			AND ha.row_date BETWEEN DATEADD(DD,GROUPS1.START_NOM_DATE,'1899-12-30') AND DATEADD(DD,GROUPS1.STOP_NOM_DATE,'1899-12-30')
		Join SplitLob sl
			on sl.vendorID = 1
			and ha.acd = sl.acd
			and ha.split = sl.split
			and Month(ha.row_date) = sl.monthNum
			and Year(ha.row_date) = sl.yearNum
		Join LOB
			on sl.lobID = LOB.ID
	Where
		ha.row_date between Dateadd(dd,-45,Cast(GETDATE() as date)) and Dateadd(dd,-1,Cast(GETDATE() as date))
	Group by
		ha.row_date
		,ha.interval
		,GROUPS1.CODE
		,LOB.LOB
END
