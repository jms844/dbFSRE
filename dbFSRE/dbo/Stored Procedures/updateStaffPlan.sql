-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateStaffPlan 
	-- Add the parameters for the stored procedure here
	@Week date, 
	@LOB varchar(30),
	@Plan varchar(30),
	@FTE_Def numeric(9,2),
	@pAttr decimal(5,4),
	@pOcc decimal(5,4),
	@pShrink decimal(5,4),
	@pOOC decimal(5,4),
	@pABS decimal(5,4),
	@pPTO decimal(5,4),
	@pLOA decimal(5,4),
	@pIC decimal(5,4),
	@pBreak decimal(5,4),
	@pCoach decimal(5,4),
	@pLead decimal(5,4),
	@pMeeting decimal(5,4),
	@pPersonal decimal(5,4),
	@pPreshift decimal(5,4),
	@pProject decimal(5,4),
	@pSystem decimal(5,4),
	@pTraining decimal(5,4),
	@pUT decimal(5,4),
	@prodHC numeric(9,2),
	@tenHC numeric(9,2),
	@ntHC numeric(9,2),
	@nestHC numeric(9,2),
	@trainHC numeric(9,2),
	@prodHours numeric(9,2),
	@tenHours numeric(9,2),
	@ntHours numeric(9,2),
	@nestHours numeric(9,2),
	@trainHours numeric(9,2),
	@prodAHT numeric(9,2),
	@tenAHT numeric(9,2),
	@ntAHT numeric(9,2),
	@nestAHT numeric(9,2),
	@trainAHT numeric(9,2),
	@prodConc numeric(9,2),
	@tenConc numeric(9,2),
	@ntConc numeric(9,2),
	@nestConc numeric(9,2),
	@trainConc numeric(9,2),
	@prodFTE numeric(9,2),
	@tenFTE numeric(9,2),
	@ntFTE numeric(9,2),
	@nestFTE numeric(9,2),
	@trainFTE numeric(9,2),
	@prodCap numeric(9,2),
	@tenCap numeric(9,2),
	@ntCap numeric(9,2),
	@nestCap numeric(9,2),
	@trainCap numeric(9,2),
	@ProdSeats numeric(9,2),
	@TrainSeats numeric(9,2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Staff_Plan
		Set [FTE Definition] = @FTE_Def
		,[Planned Attrition] = @pAttr
		,[Planned Occupancy] = @pOcc
		,[Planned Shrinkage] = @pShrink
		,[Planned OOC Shrinkage] = @pOOC
		,[Planned ABS] = @pABS
		,[Planned Time Off] = @pPTO
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
		,[Production HC] = @prodHC
		,[Tenured HC] = @tenHC
		,[Non-Tenured HC] = @ntHC
		,[Nesting HC] = @nestHC
		,[Training HC] = @trainHC
		,[Production Hours] = @prodHours
		,[Tenured Hours] = @tenHours
		,[Non-Tenured Hours] = @ntHours
		,[Nesting Hours] = @nestHours
		,[Training Hours] = @trainHours
		,[Production AHT] = @prodAHT
		,[Tenured AHT] = @tenAHT
		,[Non-Tenured AHT] = @ntAHT
		,[Nesting AHT] = @nestAHT
		,[Training AHT] = @trainAHT
		,[Production Concurrency] = @prodConc
		,[Tenured Concurrency] = @tenConc
		,[Non-Tenured Concurrency] = @ntConc
		,[Nesting Concurrency] = @nestConc
		,[Training Concurrency] = @trainConc
		,[Production FTE] = @prodFTE
		,[Tenured FTE] = @tenFTE
		,[Non-Tenured FTE] = @ntFTE
		,[Nesting FTE] = @nestFTE
		,[Training FTE] = @trainFTE
		,[Production Capacity] = @prodCap
		,[Tenured Capacity] = @tenCap
		,[Non-Tenured Capacity] = @ntCap
		,[Nesting Capacity] = @nestCap
		,[Training Capacity] = @trainCap
		,[Production Seats] = @ProdSeats
		,[Training Seats] = @TrainSeats
	Where
		[Week] = @Week
		and [LOB] = @LOB
		and [Plan] = @Plan
END
