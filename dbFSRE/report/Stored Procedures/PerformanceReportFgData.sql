-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [report].PerformanceReportFgData
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
	 ,lobID
	 ,hSplit.vendorID
	 ,sum(acdcalls)acdcalls
	 ,sum(abncalls)abncalls
	 ,sum(acceptable)acceptable
	 ,sum(anstime)anstime
	From
	 hSplit Join SplitLob
	  on hSplit.vendorID = SplitLob.vendorID
	  and hSplit.acd = SplitLob.acd
	  and hSplit.split = SplitLob.split
	  and Month(row_date) = SplitLob.monthNum
	  and Year(row_date) = SplitLob.yearNum
	Where
	 Month(row_date) = Month(DATEADD(DD,@dayOffset,GETDATE()))
	 and Year(row_date) = Year(DATEADD(DD,@dayOffset,GETDATE()))
	 and SplitLob.lobID in (23,24,25,26,27,28,29,43)
	Group by
	 row_date
	 ,lobID
	 ,hSplit.vendorID;
END
