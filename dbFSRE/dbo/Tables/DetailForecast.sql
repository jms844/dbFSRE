CREATE TABLE [dbo].[DetailForecast] (
    [DetailForecastId] BIGINT   IDENTITY (1, 1) NOT NULL,
    [forecastWkId]     INT      NULL,
    [detForecastId]    INT      NULL,
    [lobID]            INT      NULL,
    [vendorID]         INT      NULL,
    [ForecastDate]     DATETIME NULL,
    [ForecastInterval] TIME (0) NULL,
    [Forecast]         INT      NULL,
    [Updated]          DATETIME NULL,
    [Current]          BIT      NULL,
    [OpenWeek]         AS       (case when datediff(day,getdate(),[ForecastDate])>=(-1) then (1) else (0) end),
    CONSTRAINT [PK_DetailForecast] PRIMARY KEY CLUSTERED ([DetailForecastId] ASC)
);


GO
-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER dbo.NewDetail 
   ON  dbo.DetailForecast 
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	Update df
	Set df.detForecastId = ins.DetailForecastId
	From DetailForecast df Join inserted ins
		on df.DetailForecastId = ins.DetailForecastId
END

GO
-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER dbo.UpdateDetailForecast 
   ON  dbo.DetailForecast 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	Update DetailForecast
	Set	Updated = GETDATE()
	Where
		DetailForecastId = (Select DetailForecastId From inserted);

	Insert into DetailForecast(detForecastId, lobID, vendorID, ForecastDate, Forecast, Updated, [Current])
	Select
		deleted.detForecastId
		,deleted.lobID
		,deleted.vendorID
		,deleted.ForecastDate
		,deleted.Forecast
		,deleted.Updated
		,0
	From
		deleted join inserted
			on deleted.DetailForecastId = inserted.detForecastId
	Where
		deleted.Forecast > 0
END

GO
DISABLE TRIGGER [dbo].[UpdateDetailForecast]
    ON [dbo].[DetailForecast];

