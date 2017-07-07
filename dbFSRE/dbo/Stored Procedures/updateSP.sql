-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateSP] 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@siteID int = 0,
	@Week date,
	@pAttr numeric(5,4) = null,
	@pOcc numeric(5,4) = null,
	@pShrink numeric(5,4) = null,
	@pOOC numeric(5,4) = null,
	@pABS numeric(5,4) = null,
	@pPTO numeric(5,4) = null,
	@pLOA numeric(5,4) = null,
	@pIC numeric(5,4) = null,
	@pBreak numeric(5,4) = null,
	@pCoach numeric(5,4) = null,
	@pLead numeric(5,4) = null,
	@pMeeting numeric(5,4) = null,
	@pPersonal numeric(5,4) = null,
	@pPreshift numeric(5,4) = null,
	@pProject numeric(5,4) = null,
	@pSystem numeric(5,4) = null,
	@pTraining numeric(5,4) = null,
	@pUT numeric(5,4) = null,
	@prodHC numeric(9,2) = null,
	@tenHC numeric(9,2) = null,
	@tenHCAdj numeric(9,2) = null,
	@ntHC numeric(9,2) = null,
	@nestHC numeric(9,2) = null,
	@trainHC numeric(9,2) = null,
	@prodHours numeric(9,2) = null,
	@tenHours numeric(9,2) = null,
	@ntHours numeric(9,2) = null,
	@nestHours numeric(9,2) = null,
	@trainHours numeric(9,2) = null,
	@prodAHT numeric(9,2) = null,
	@tenAHT numeric(9,2) = null,
	@ntAHT numeric(9,2) = null,
	@nestAHT numeric(9,2) = null,
	@trainAHT numeric(9,2) = null,
	@prodConc numeric(9,2) = null,
	@tenConc numeric(9,2) = null,
	@ntConc numeric(9,2) = null,
	@nestConc numeric(9,2) = null,
	@trainConc numeric(9,2) = null,
	@prodFTE numeric(9,2) = null,
	@tenFTE numeric(9,2) = null,
	@ntFTE numeric(9,2) = null,
	@nestFTE numeric(9,2) = null,
	@trainFTE numeric(9,2) = null,
	@prodCap numeric(9,2) = null,
	@capAdj numeric(9,2) = null,
	@tenCap numeric(9,2) = null,
	@ntCap numeric(9,2) = null,
	@nestCap numeric(9,2) = null,
	@trainCap numeric(9,2) = null,
	@ProdSeats numeric(9,2) = null,
	@TrainSeats numeric(9,2) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update StaffPlan
		Set [Planned Attrition] = @pAttr
		,[Planned Occupancy] = @pOcc
		,[Planned Shrinkage] = @pShrink
		,[Planned OOC Shrinkage] = @pOOC
		,[Planned ABS] = @pABS
		,[Planned PTO] = @pPTO
		,[Planned LOA] = @pLOA
		,[Planned IC Shrinkage] = @pIC
		,[Planned Break] = @pBreak
		,[Planned Coach] = @pCoach
		,[Planned Lead] = @pLead
		,[Planned Meeting] = @pMeeting
		,[Planned Personal] = @pPersonal
		,[Planned Preshift] = @pPreshift
		,[Planned Project] = @pProject
		,[Planned System] = @pSystem
		,[Planned Training] = @pTraining
		,[Planned Unaccounted Time] = @pUT
		,[Planned HC] = @prodHC
		,[Tenured HC] = @tenHC
		,[Tenured HC Adj.] = @tenHCAdj
		,[Non-Tenured HC] = @ntHC
		,[Nesting HC] = @nestHC
		,[Training HC] = @trainHC
		,[Planned Hours] = @prodHours
		,[Tenured Hours] = @tenHours
		,[Non-Tenured Hours] = @ntHours
		,[Nesting Hours] = @nestHours
		,[Training Hours] = @trainHours
		,[Planned AHT] = @prodAHT
		,[Tenured AHT] = @tenAHT
		,[Non-Tenured AHT] = @ntAHT
		,[Nesting AHT] = @nestAHT
		,[Training AHT] = @trainAHT
		,[Planned Concurrency] = @prodConc
		,[Tenured Concurrency] = @tenConc
		,[Non-Tenured Concurrency] = @ntConc
		,[Nesting Concurrency] = @nestConc
		,[Training Concurrency] = @trainConc
		,[Planned FTE] = @prodFTE
		,[Tenured FTE] = @tenFTE
		,[Non-Tenured FTE] = @ntFTE
		,[Nesting FTE] = @nestFTE
		,[Training FTE] = @trainFTE
		,[Planned Capacity] = @prodCap
		,[Capacity Adj.] = @capAdj
		,[Tenured Capacity] = @tenCap
		,[Non-Tenured Capacity] = @ntCap
		,[Nesting Capacity] = @nestCap
		,[Training Capacity] = @trainCap
		,[Production Seats] = @ProdSeats
		,[Training Seats] = @TrainSeats
	Where
		[Week] = @Week
		and lobID = @lobID
		and siteID = @siteID
END
