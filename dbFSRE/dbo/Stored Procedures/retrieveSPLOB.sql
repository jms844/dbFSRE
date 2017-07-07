-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[retrieveSPLOB] 
	-- Add the parameters for the stored procedure here
	@lobID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select
		s1.[Week]
		,LOB
		,[FTE Definition]
		,[Planned Attrition]
		,[Planned Occupancy]
		,Headcount
		,AHT
		,[Run Rate %]
		,[Forecast Volume]
		,null as [Run Rate Volume]
		,Capacity
		,[Tenured Capacity]
		,[Non-Tenured Capacity]
		,[Nesting Capacity]
		,[Training Capacity]
		,null as [Capacity / Locked]
		,null as [Capacity / Run Rate]
		,null as [Forecast FTE]
		,null as [Run Rate FTE]
		,FTE
		,[Tenured FTE]
		,[Non-Tenured FTE]
		,[Nesting FTE]
		,[Training FTE]
		,null as [FTE / Forecast FTE]
		,null as [FTE / Run Rate]
		,null as [Planned Shrink]
		,null as [Planned OOC]
		,[Planned ABS]
		,[Planned Time Off]
		,[Planned LOA]
		,null as [Planned IC]
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
	From
		Staff_Plan_LOB s1 Join StaffPlan_LOB s2 on s1.ID = s2.lobID
			and s2.[Week] = s1.[Week]
	Where s1.[Week] > GETDATE() - 7
		and s1.ID = @lobID
	Order by s1.[Week]
END
