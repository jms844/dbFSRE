-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE getPastWeeks 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select top 50
		Cast(Dateadd(dd,-Datepart(dw,row_date) + 1,row_date) as datetime) WeekDate
	From
		hSplit
	Where
		row_date < GETDATE()
	Group by Dateadd(dd,-Datepart(dw,row_date) + 1,row_date)
	Order by WeekDate desc;
END
