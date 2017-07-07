-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE insertWkForecast 
	-- Add the parameters for the stored procedure here
	@lobID int = 0, 
	@forecastWeek date,
	@forecast int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into WkForecast (forecastWkId, lobID, ForecastWeek, Forecast,Updated,[Current])
	Select 
		Coalesce(max(forecastWkId),0) + 1
		,@lobID
		,@forecastWeek
		,@forecast
		,GETDATE(),1
	From
		WkForecast
END
