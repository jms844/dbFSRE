﻿-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateLastDateHagent]
	-- Add the parameters for the stored procedure here
--	@vendorID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update
		hsd
	Set
		hsd.latestDay = maxDates.maxDate
	From
		recent.hAgentDay hsd Join (
			Select
				vendorID
				,Max(row_date) maxDate
			From
				hAgentStg
			Group by
				vendorID
		) maxDates
			on hsd.vendorID = maxDates.vendorID
END
