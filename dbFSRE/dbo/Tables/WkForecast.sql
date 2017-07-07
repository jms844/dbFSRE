CREATE TABLE [dbo].[WkForecast] (
    [WkForecastId] INT      IDENTITY (1, 1) NOT NULL,
    [forecastWkId] INT      NOT NULL,
    [lobID]        INT      NULL,
    [ForecastWeek] DATETIME NULL,
    [Forecast]     INT      NULL,
    [Updated]      DATETIME NULL,
    [Current]      BIT      NULL,
    [OpenWeek]     AS       (case when datediff(day,getdate(),[ForecastWeek])>=(-7) then (1) else (0) end),
    CONSTRAINT [PK_WkForecast] PRIMARY KEY CLUSTERED ([WkForecastId] ASC),
    CONSTRAINT [FK_WkForecast_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID])
);


GO
-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER dbo.ForecastChange 
   ON  dbo.WkForecast 
   After UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Update WkForecast
	Set	Updated = GETDATE()
	Where
		WkForecastId = (Select WkForecastId From inserted);

	Insert into WkForecast (forecastWkId, lobID, ForecastWeek, Forecast, Updated, [Current])
	Select
		forecastWkId
		,lobID
		,ForecastWeek
		,Forecast
		,Updated
		,0
	From
		deleted
    -- Insert statements for trigger here

END

GO
-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER [dbo].[NewForecast] 
   ON  [dbo].[WkForecast] 
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	Insert into DetailForecast(forecastWkId,lobID,vendorID,ForecastDate,ForecastInterval,Forecast,Updated,[Current])
	Select
		ins.forecastWkId
		,ins.lobID
		,vl.vendorID
		,row_date
		,hInterval
		,0 Forecast
		,GETDATE()
		,1
	From
		inserted ins Join VendorLob vl
			on ins.lobID = vl.lobID
		Cross Join DateDef
		Cross Join (
			Select
				hInterval
			From
				IntervalDef
			Group by
				hInterval
		) t1
	Left Outer Join DetailForecast df
		on ins.lobID = df.lobID
		and vl.vendorID = df.vendorID
		and DateDef.row_date = df.ForecastDate
		and t1.hInterval = df.ForecastInterval
	Where
		DateDef.row_date between ins.ForecastWeek and Dateadd(dd,6,ins.ForecastWeek)
		and df.forecastWkId is null
END
