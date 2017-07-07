-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateWkForecasts 
	-- Add the parameters for the stored procedure here
	@WkForecastId int,
	@forecast int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Update WkForecast
	Set
		Forecast = @forecast
	Where
		WkForecastId = @WkForecastId
	
END
