-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateForecastDetail
	-- Add the parameters for the stored procedure here
	@DetailForecastId int = 0, 
	@forecast int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
Begin
	Insert into DetailForecast (forecastWkId,detForecastId,lobID,vendorID,ForecastDate,ForecastInterval,Forecast,Updated,[Current])
	Select
		forecastWkId
		,detForecastId
		,lobID
		,vendorID
		,ForecastDate
		,ForecastInterval
		,Forecast
		,Updated
		,0
	From
		DetailForecast
	Where
		DetailForecastId = @DetailForecastId
		and Forecast > 0
end
	Update DetailForecast
	Set
		Forecast = @forecast
		,Updated = GETDATE()
	Where
		DetailForecastId = @DetailForecastId
END
