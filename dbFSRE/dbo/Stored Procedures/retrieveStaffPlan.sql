-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[retrieveStaffPlan] 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@siteID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
		[Week]
		,lobID
		,siteID
		,LOB.[FTE Definition]
		,[Planned Attrition]
		,[Planned Occupancy]
		,[Planned Shrinkage]
		,[Planned OOC Shrinkage]
		,[Planned ABS]
		,[Planned PTO]
		,[Planned LOA]
		,[Planned IC Shrinkage]
		,[Planned Break]
		,[Planned Coach]
		,[Planned Lead]
		,[Planned Meeting]
		,[Planned Personal]
		,[Planned Preshift]
		,[Planned Project]
		,[Planned System]
		,[Planned Training]
		,[Planned Unaccounted Time]
		,[Planned HC]
		,[Tenured HC Adj.]
		,[Tenured HC]
		,[Non-Tenured HC]
		,[Nesting HC]
		,[Training HC]
		,[Planned Hours]
		,[Tenured Hours]
		,[Non-Tenured Hours]
		,[Nesting Hours]
		,[Training Hours]
		,[Planned AHT]
		,[Tenured AHT]
		,[Non-Tenured AHT]
		,[Nesting AHT]
		,[Training AHT]
		,[Planned Concurrency]
		,[Tenured Concurrency]
		,[Non-Tenured Concurrency]
		,[Nesting Concurrency]
		,[Training Concurrency]
		,[Planned FTE]
		,[Tenured FTE]
		,[Non-Tenured FTE]
		,[Nesting FTE]
		,[Training FTE]
		,[Planned Capacity]
		,[Capacity Adj.]
		,[Tenured Capacity]
		,[Non-Tenured Capacity]
		,[Nesting Capacity]
		,[Training Capacity]
		,[Production Seats]
		,[Training Seats]
	from StaffPlan Join LOB
		on StaffPlan.lobID = LOB.ID
	Where lobID = @lobID and siteID = @siteID
		and [Week] > GETDATE() - 7
	Order by [Week]
END
