-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE generateVendorPatterns 
	-- Add the parameters for the stored procedure here
	@lobID int = 0 
	,@week1 nvarchar(10) = null
	,@week2 nvarchar(10) = null
	,@week3 nvarchar(10) = null
	,@week4 nvarchar(10) = null
	,@week5 nvarchar(10) = null
	,@week6 nvarchar(10) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	With vendorData as (
		Select
			hSplit.vendorID
			,sl.lobID
			,dd.dowNum
			,id.hInterval
			,SUM(i_arrived) i_arrived
		From
			hSplit Join SplitLob sl
				on hSplit.vendorID = sl.vendorID
				and hSplit.acd = sl.acd
				and hSplit.split = sl.split
				and hSplit.monthNum = sl.monthNum
				and hSplit.yearNum = sl.yearNum
			Join IntervalDef id
				on hSplit.interval = id.qInterval
			Join DateDef dd
				on hSplit.row_date = dd.row_date
		Where
			hSplit.vendorID != 1
			and dd.WeekDate in (@week1, @week2, @week3, @week4, @week5, @week6)
			and lobID = @lobID
		Group by
			hSplit.vendorID
			,sl.lobID
			,dd.dowNum
			,id.hInterval
	), lobData as (
		Select
			sl.lobID
			,dd.dowNum
			,id.hInterval
			,SUM(i_arrived) i_arrived
		From
			hSplit Join SplitLob sl
				on hSplit.vendorID = sl.vendorID
				and hSplit.acd = sl.acd
				and hSplit.split = sl.split
				and hSplit.monthNum = sl.monthNum
				and hSplit.yearNum = sl.yearNum
			Join IntervalDef id
				on hSplit.interval = id.qInterval
			Join DateDef dd
				on hSplit.row_date = dd.row_date
		Where
			hSplit.vendorID != 1
			and dd.WeekDate in (@week1, @week2, @week3, @week4, @week5, @week6)
			and lobID = @lobID
		Group by
			sl.lobID
			,dd.dowNum
			,id.hInterval
	)
	Select
		vd.*
		,ld.i_arrived
		,Coalesce(Cast(vd.i_arrived as float) / nullif(Cast(ld.i_arrived as float),0),0) Alloc
	From
		vendorData vd Join lobData ld
			on vd.lobID = ld.lobID
			and vd.dowNum = ld.dowNum
			and vd.hInterval = ld.hInterval
END
