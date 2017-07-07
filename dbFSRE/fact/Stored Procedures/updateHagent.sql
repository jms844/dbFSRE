﻿-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [fact].[updateHagent] 
	-- Add the parameters for the stored procedure here
--	@p1 int = 0, 
--	@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Merge
		dbo.hAgent dest using dbo.hAgentStg src
		on (
			dest.row_date = src.row_date
			and dest.interval = src.interval
			and dest.acd = src.acd
			and dest.split = src.split
			and dest.vendorID = src.vendorID
			and dest.logid = src.logid
		) When Matched Then Update Set
			dest.[i_stafftime] = src.[i_stafftime]
			,dest.[ti_stafftime] = src.[ti_stafftime]
			,dest.[i_availtime] = src.[i_availtime]
			,dest.[ti_availtime] = src.[ti_availtime]
			,dest.[i_acdtime] = src.[i_acdtime]
			,dest.[i_acwtime] = src.[i_acwtime]
			,dest.[i_acwouttime] = src.[i_acwouttime]
			,dest.[i_acwintime] = src.[i_acwintime]
			,dest.[ti_auxtime] = src.[ti_auxtime]
			,dest.[i_auxouttime] = src.[i_auxouttime]
			,dest.[i_auxintime] = src.[i_auxintime]
			,dest.[i_othertime] = src.[i_othertime]
			,dest.[acwincalls] = src.[acwincalls]
			,dest.[acwintime] = src.[acwintime]
			,dest.[auxincalls] = src.[auxincalls]
			,dest.[auxintime] = src.[auxintime]
			,dest.[acwoutcalls] = src.[acwoutcalls]
			,dest.[acwouttime] = src.[acwouttime]
			,dest.[acwoutoffcalls] = src.[acwoutoffcalls]
			,dest.[acwoutofftime] = src.[acwoutofftime]
			,dest.[acwoutadjcalls] = src.[acwoutadjcalls]
			,dest.[auxoutcalls] = src.[auxoutcalls]
			,dest.[auxouttime] = src.[auxouttime]
			,dest.[auxoutoffcalls] = src.[auxoutoffcalls]
			,dest.[auxoutofftime] = src.[auxoutofftime]
			,dest.[auxoutadjcalls] = src.[auxoutadjcalls]
			,dest.[event1] = src.[event1]
			,dest.[event2] = src.[event2]
			,dest.[event3] = src.[event3]
			,dest.[event4] = src.[event4]
			,dest.[event5] = src.[event5]
			,dest.[event6] = src.[event6]
			,dest.[event7] = src.[event7]
			,dest.[event8] = src.[event8]
			,dest.[event9] = src.[event9]
			,dest.[assists] = src.[assists]
			,dest.[acdcalls] = src.[acdcalls]
			,dest.[acdtime] = src.[acdtime]
			,dest.[acwtime] = src.[acwtime]
			,dest.[o_acdcalls] = src.[o_acdcalls]
			,dest.[o_acdtime] = src.[o_acdtime]
			,dest.[o_acwtime] = src.[o_acwtime]
			,dest.[da_acdcalls] = src.[da_acdcalls]
			,dest.[da_anstime] = src.[da_anstime]
			,dest.[da_abncalls] = src.[da_abncalls]
			,dest.[da_abntime] = src.[da_abntime]
			,dest.[holdcalls] = src.[holdcalls]
			,dest.[holdtime] = src.[holdtime]
			,dest.[holdabncalls] = src.[holdabncalls]
			,dest.[transferred] = src.[transferred]
			,dest.[conference] = src.[conference]
			,dest.[abncalls] = src.[abncalls]
			,dest.[abntime] = src.[abntime]
			,dest.[i_ringtime] = src.[i_ringtime]
			,dest.[i_da_acdtime] = src.[i_da_acdtime]
			,dest.[i_da_acwtime] = src.[i_da_acwtime]
			,dest.[da_acdtime] = src.[da_acdtime]
			,dest.[da_acwtime] = src.[da_acwtime]
			,dest.[da_othercalls] = src.[da_othercalls]
			,dest.[da_othertime] = src.[da_othertime]
			,dest.[ringcalls] = src.[ringcalls]
			,dest.[ringtime] = src.[ringtime]
			,dest.[ansringtime] = src.[ansringtime]
			,dest.[ti_othertime] = src.[ti_othertime]
			,dest.[da_acwincalls] = src.[da_acwincalls]
			,dest.[da_acwintime] = src.[da_acwintime]
			,dest.[da_acwocalls] = src.[da_acwocalls]
			,dest.[da_acwotime] = src.[da_acwotime]
			,dest.[da_acwoadjcalls] = src.[da_acwoadjcalls]
			,dest.[da_acwooffcalls] = src.[da_acwooffcalls]
			,dest.[da_acwoofftime] = src.[da_acwoofftime]
			,dest.[noansredir] = src.[noansredir]
			,dest.[incomplete] = src.[incomplete]
			,dest.[acdauxoutcalls] = src.[acdauxoutcalls]
			,dest.[i_acdaux_outtime] = src.[i_acdaux_outtime]
			,dest.[i_acdauxintime] = src.[i_acdauxintime]
			,dest.[i_acdothertime] = src.[i_acdothertime]
			,dest.[phantomabns] = src.[phantomabns]
			,dest.[i_auxtime] = src.[i_auxtime]
			,dest.[holdacdtime] = src.[holdacdtime]
			,dest.[da_release] = src.[da_release]
			,dest.[acd_release] = src.[acd_release]
			,dest.[ti_auxtime0] = src.[ti_auxtime0]
			,dest.[ti_auxtime1] = src.[ti_auxtime1]
			,dest.[ti_auxtime2] = src.[ti_auxtime2]
			,dest.[ti_auxtime3] = src.[ti_auxtime3]
			,dest.[ti_auxtime4] = src.[ti_auxtime4]
			,dest.[ti_auxtime5] = src.[ti_auxtime5]
			,dest.[ti_auxtime6] = src.[ti_auxtime6]
			,dest.[ti_auxtime7] = src.[ti_auxtime7]
			,dest.[ti_auxtime8] = src.[ti_auxtime8]
			,dest.[ti_auxtime9] = src.[ti_auxtime9]
			,dest.[acdcalls_r1] = src.[acdcalls_r1]
			,dest.[acdcalls_r2] = src.[acdcalls_r2]
			,dest.[i_otherstbytime] = src.[i_otherstbytime]
			,dest.[i_auxstbytime] = src.[i_auxstbytime]
			,dest.[intrnotifies] = src.[intrnotifies]
			,dest.[acceptedintrs] = src.[acceptedintrs]
			,dest.[rejectedintrs] = src.[rejectedintrs]
			,dest.[intrdeliveries] = src.[intrdeliveries]
			,dest.[ti_auxtime10] = src.[ti_auxtime10]
			,dest.[ti_auxtime11] = src.[ti_auxtime11]
			,dest.[ti_auxtime12] = src.[ti_auxtime12]
			,dest.[ti_auxtime13] = src.[ti_auxtime13]
			,dest.[ti_auxtime14] = src.[ti_auxtime14]
			,dest.[ti_auxtime15] = src.[ti_auxtime15]
			,dest.[ti_auxtime16] = src.[ti_auxtime16]
			,dest.[ti_auxtime17] = src.[ti_auxtime17]
			,dest.[ti_auxtime18] = src.[ti_auxtime18]
			,dest.[ti_auxtime19] = src.[ti_auxtime19]
			,dest.[ti_auxtime20] = src.[ti_auxtime20]
			,dest.[ti_auxtime21] = src.[ti_auxtime21]
			,dest.[ti_auxtime22] = src.[ti_auxtime22]
			,dest.[ti_auxtime23] = src.[ti_auxtime23]
			,dest.[ti_auxtime24] = src.[ti_auxtime24]
			,dest.[ti_auxtime25] = src.[ti_auxtime25]
			,dest.[ti_auxtime26] = src.[ti_auxtime26]
			,dest.[ti_auxtime27] = src.[ti_auxtime27]
			,dest.[ti_auxtime28] = src.[ti_auxtime28]
			,dest.[ti_auxtime29] = src.[ti_auxtime29]
			,dest.[ti_auxtime30] = src.[ti_auxtime30]
			,dest.[ti_auxtime31] = src.[ti_auxtime31]
			,dest.[ti_auxtime32] = src.[ti_auxtime32]
			,dest.[ti_auxtime33] = src.[ti_auxtime33]
			,dest.[ti_auxtime34] = src.[ti_auxtime34]
			,dest.[ti_auxtime35] = src.[ti_auxtime35]
			,dest.[ti_auxtime36] = src.[ti_auxtime36]
			,dest.[ti_auxtime37] = src.[ti_auxtime37]
			,dest.[ti_auxtime38] = src.[ti_auxtime38]
			,dest.[ti_auxtime39] = src.[ti_auxtime39]
			,dest.[ti_auxtime40] = src.[ti_auxtime40]
			,dest.[ti_auxtime41] = src.[ti_auxtime41]
			,dest.[ti_auxtime42] = src.[ti_auxtime42]
			,dest.[ti_auxtime43] = src.[ti_auxtime43]
			,dest.[ti_auxtime44] = src.[ti_auxtime44]
			,dest.[ti_auxtime45] = src.[ti_auxtime45]
			,dest.[ti_auxtime46] = src.[ti_auxtime46]
			,dest.[ti_auxtime47] = src.[ti_auxtime47]
			,dest.[ti_auxtime48] = src.[ti_auxtime48]
			,dest.[ti_auxtime49] = src.[ti_auxtime49]
			,dest.[ti_auxtime50] = src.[ti_auxtime50]
			,dest.[ti_auxtime51] = src.[ti_auxtime51]
			,dest.[ti_auxtime52] = src.[ti_auxtime52]
			,dest.[ti_auxtime53] = src.[ti_auxtime53]
			,dest.[ti_auxtime54] = src.[ti_auxtime54]
			,dest.[ti_auxtime55] = src.[ti_auxtime55]
			,dest.[ti_auxtime56] = src.[ti_auxtime56]
			,dest.[ti_auxtime57] = src.[ti_auxtime57]
			,dest.[ti_auxtime58] = src.[ti_auxtime58]
			,dest.[ti_auxtime59] = src.[ti_auxtime59]
			,dest.[ti_auxtime60] = src.[ti_auxtime60]
			,dest.[ti_auxtime61] = src.[ti_auxtime61]
			,dest.[ti_auxtime62] = src.[ti_auxtime62]
			,dest.[ti_auxtime63] = src.[ti_auxtime63]
			,dest.[ti_auxtime64] = src.[ti_auxtime64]
			,dest.[ti_auxtime65] = src.[ti_auxtime65]
			,dest.[ti_auxtime66] = src.[ti_auxtime66]
			,dest.[ti_auxtime67] = src.[ti_auxtime67]
			,dest.[ti_auxtime68] = src.[ti_auxtime68]
			,dest.[ti_auxtime69] = src.[ti_auxtime69]
			,dest.[ti_auxtime70] = src.[ti_auxtime70]
			,dest.[ti_auxtime71] = src.[ti_auxtime71]
			,dest.[ti_auxtime72] = src.[ti_auxtime72]
			,dest.[ti_auxtime73] = src.[ti_auxtime73]
			,dest.[ti_auxtime74] = src.[ti_auxtime74]
			,dest.[ti_auxtime75] = src.[ti_auxtime75]
			,dest.[ti_auxtime76] = src.[ti_auxtime76]
			,dest.[ti_auxtime77] = src.[ti_auxtime77]
			,dest.[ti_auxtime78] = src.[ti_auxtime78]
			,dest.[ti_auxtime79] = src.[ti_auxtime79]
			,dest.[ti_auxtime80] = src.[ti_auxtime80]
			,dest.[ti_auxtime81] = src.[ti_auxtime81]
			,dest.[ti_auxtime82] = src.[ti_auxtime82]
			,dest.[ti_auxtime83] = src.[ti_auxtime83]
			,dest.[ti_auxtime84] = src.[ti_auxtime84]
			,dest.[ti_auxtime85] = src.[ti_auxtime85]
			,dest.[ti_auxtime86] = src.[ti_auxtime86]
			,dest.[ti_auxtime87] = src.[ti_auxtime87]
			,dest.[ti_auxtime88] = src.[ti_auxtime88]
			,dest.[ti_auxtime89] = src.[ti_auxtime89]
			,dest.[ti_auxtime90] = src.[ti_auxtime90]
			,dest.[ti_auxtime91] = src.[ti_auxtime91]
			,dest.[ti_auxtime92] = src.[ti_auxtime92]
			,dest.[ti_auxtime93] = src.[ti_auxtime93]
			,dest.[ti_auxtime94] = src.[ti_auxtime94]
			,dest.[ti_auxtime95] = src.[ti_auxtime95]
			,dest.[ti_auxtime96] = src.[ti_auxtime96]
			,dest.[ti_auxtime97] = src.[ti_auxtime97]
			,dest.[ti_auxtime98] = src.[ti_auxtime98]
			,dest.[ti_auxtime99] = src.[ti_auxtime99]
			,dest.[icrpullcalls] = src.[icrpullcalls]
			,dest.[icrpulltime] = src.[icrpulltime]
			,dest.[da_icrpullcalls] = src.[da_icrpullcalls]
			,dest.[da_icrpulltime] = src.[da_icrpulltime]
			,dest.[attrib_id] = src.[attrib_id]
			,dest.[CMS] = src.[CMS]
		When Not Matched Then Insert(
			row_date,interval,acd,split,vendorID,logid,i_stafftime,ti_stafftime,i_availtime,ti_availtime,i_acdtime,i_acwtime,i_acwouttime,i_acwintime,ti_auxtime,i_auxouttime,i_auxintime,i_othertime,acwincalls,acwintime,auxincalls,auxintime,acwoutcalls,acwouttime,acwoutoffcalls,acwoutofftime,acwoutadjcalls,auxoutcalls,auxouttime,auxoutoffcalls,auxoutofftime,auxoutadjcalls,event1,event2,event3,event4,event5,event6,event7,event8,event9,assists,acdcalls,acdtime,acwtime,o_acdcalls,o_acdtime,o_acwtime,da_acdcalls,da_anstime,da_abncalls,da_abntime,holdcalls,holdtime,holdabncalls,transferred,conference,abncalls,abntime,i_ringtime,i_da_acdtime,i_da_acwtime,da_acdtime,da_acwtime,da_othercalls,da_othertime,ringcalls,ringtime,ansringtime,ti_othertime,da_acwincalls,da_acwintime,da_acwocalls,da_acwotime,da_acwoadjcalls,da_acwooffcalls,da_acwoofftime,noansredir,incomplete,acdauxoutcalls,i_acdaux_outtime,i_acdauxintime,i_acdothertime,phantomabns,i_auxtime,holdacdtime,da_release,acd_release,ti_auxtime0,ti_auxtime1,ti_auxtime2,ti_auxtime3,ti_auxtime4,ti_auxtime5,ti_auxtime6,ti_auxtime7,ti_auxtime8,ti_auxtime9,acdcalls_r1,acdcalls_r2,i_otherstbytime,i_auxstbytime,intrnotifies,acceptedintrs,rejectedintrs,intrdeliveries,ti_auxtime10,ti_auxtime11,ti_auxtime12,ti_auxtime13,ti_auxtime14,ti_auxtime15,ti_auxtime16,ti_auxtime17,ti_auxtime18,ti_auxtime19,ti_auxtime20,ti_auxtime21,ti_auxtime22,ti_auxtime23,ti_auxtime24,ti_auxtime25,ti_auxtime26,ti_auxtime27,ti_auxtime28,ti_auxtime29,ti_auxtime30,ti_auxtime31,ti_auxtime32,ti_auxtime33,ti_auxtime34,ti_auxtime35,ti_auxtime36,ti_auxtime37,ti_auxtime38,ti_auxtime39,ti_auxtime40,ti_auxtime41,ti_auxtime42,ti_auxtime43,ti_auxtime44,ti_auxtime45,ti_auxtime46,ti_auxtime47,ti_auxtime48,ti_auxtime49,ti_auxtime50,ti_auxtime51,ti_auxtime52,ti_auxtime53,ti_auxtime54,ti_auxtime55,ti_auxtime56,ti_auxtime57,ti_auxtime58,ti_auxtime59,ti_auxtime60,ti_auxtime61,ti_auxtime62,ti_auxtime63,ti_auxtime64,ti_auxtime65,ti_auxtime66,ti_auxtime67,ti_auxtime68,ti_auxtime69,ti_auxtime70,ti_auxtime71,ti_auxtime72,ti_auxtime73,ti_auxtime74,ti_auxtime75,ti_auxtime76,ti_auxtime77,ti_auxtime78,ti_auxtime79,ti_auxtime80,ti_auxtime81,ti_auxtime82,ti_auxtime83,ti_auxtime84,ti_auxtime85,ti_auxtime86,ti_auxtime87,ti_auxtime88,ti_auxtime89,ti_auxtime90,ti_auxtime91,ti_auxtime92,ti_auxtime93,ti_auxtime94,ti_auxtime95,ti_auxtime96,ti_auxtime97,ti_auxtime98,ti_auxtime99,icrpullcalls,icrpulltime,da_icrpullcalls,da_icrpulltime,attrib_id,CMS
		)
		Values (
			src.row_date,src.interval,src.acd,src.split,src.vendorID,src.logid,src.i_stafftime,src.ti_stafftime,src.i_availtime,src.ti_availtime,src.i_acdtime,src.i_acwtime,src.i_acwouttime,src.i_acwintime,src.ti_auxtime,src.i_auxouttime,src.i_auxintime,src.i_othertime,src.acwincalls,src.acwintime,src.auxincalls,src.auxintime,src.acwoutcalls,src.acwouttime,src.acwoutoffcalls,src.acwoutofftime,src.acwoutadjcalls,src.auxoutcalls,src.auxouttime,src.auxoutoffcalls,src.auxoutofftime,src.auxoutadjcalls,src.event1,src.event2,src.event3,src.event4,src.event5,src.event6,src.event7,src.event8,src.event9,src.assists,src.acdcalls,src.acdtime,src.acwtime,src.o_acdcalls,src.o_acdtime,src.o_acwtime,src.da_acdcalls,src.da_anstime,src.da_abncalls,src.da_abntime,src.holdcalls,src.holdtime,src.holdabncalls,src.transferred,src.conference,src.abncalls,src.abntime,src.i_ringtime,src.i_da_acdtime,src.i_da_acwtime,src.da_acdtime,src.da_acwtime,src.da_othercalls,src.da_othertime,src.ringcalls,src.ringtime,src.ansringtime,src.ti_othertime,src.da_acwincalls,src.da_acwintime,src.da_acwocalls,src.da_acwotime,src.da_acwoadjcalls,src.da_acwooffcalls,src.da_acwoofftime,src.noansredir,src.incomplete,src.acdauxoutcalls,src.i_acdaux_outtime,src.i_acdauxintime,src.i_acdothertime,src.phantomabns,src.i_auxtime,src.holdacdtime,src.da_release,src.acd_release,src.ti_auxtime0,src.ti_auxtime1,src.ti_auxtime2,src.ti_auxtime3,src.ti_auxtime4,src.ti_auxtime5,src.ti_auxtime6,src.ti_auxtime7,src.ti_auxtime8,src.ti_auxtime9,src.acdcalls_r1,src.acdcalls_r2,src.i_otherstbytime,src.i_auxstbytime,src.intrnotifies,src.acceptedintrs,src.rejectedintrs,src.intrdeliveries,src.ti_auxtime10,src.ti_auxtime11,src.ti_auxtime12,src.ti_auxtime13,src.ti_auxtime14,src.ti_auxtime15,src.ti_auxtime16,src.ti_auxtime17,src.ti_auxtime18,src.ti_auxtime19,src.ti_auxtime20,src.ti_auxtime21,src.ti_auxtime22,src.ti_auxtime23,src.ti_auxtime24,src.ti_auxtime25,src.ti_auxtime26,src.ti_auxtime27,src.ti_auxtime28,src.ti_auxtime29,src.ti_auxtime30,src.ti_auxtime31,src.ti_auxtime32,src.ti_auxtime33,src.ti_auxtime34,src.ti_auxtime35,src.ti_auxtime36,src.ti_auxtime37,src.ti_auxtime38,src.ti_auxtime39,src.ti_auxtime40,src.ti_auxtime41,src.ti_auxtime42,src.ti_auxtime43,src.ti_auxtime44,src.ti_auxtime45,src.ti_auxtime46,src.ti_auxtime47,src.ti_auxtime48,src.ti_auxtime49,src.ti_auxtime50,src.ti_auxtime51,src.ti_auxtime52,src.ti_auxtime53,src.ti_auxtime54,src.ti_auxtime55,src.ti_auxtime56,src.ti_auxtime57,src.ti_auxtime58,src.ti_auxtime59,src.ti_auxtime60,src.ti_auxtime61,src.ti_auxtime62,src.ti_auxtime63,src.ti_auxtime64,src.ti_auxtime65,src.ti_auxtime66,src.ti_auxtime67,src.ti_auxtime68,src.ti_auxtime69,src.ti_auxtime70,src.ti_auxtime71,src.ti_auxtime72,src.ti_auxtime73,src.ti_auxtime74,src.ti_auxtime75,src.ti_auxtime76,src.ti_auxtime77,src.ti_auxtime78,src.ti_auxtime79,src.ti_auxtime80,src.ti_auxtime81,src.ti_auxtime82,src.ti_auxtime83,src.ti_auxtime84,src.ti_auxtime85,src.ti_auxtime86,src.ti_auxtime87,src.ti_auxtime88,src.ti_auxtime89,src.ti_auxtime90,src.ti_auxtime91,src.ti_auxtime92,src.ti_auxtime93,src.ti_auxtime94,src.ti_auxtime95,src.ti_auxtime96,src.ti_auxtime97,src.ti_auxtime98,src.ti_auxtime99,src.icrpullcalls,src.icrpulltime,src.da_icrpullcalls,src.da_icrpulltime,src.attrib_id,src.CMS
		);
END
