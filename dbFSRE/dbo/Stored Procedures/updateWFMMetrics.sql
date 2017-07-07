-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateWFMMetrics]
	-- Add the parameters for the stored procedure here
	@row_date date, 
	@starttime int,
	@Vendor_ID int,
	@LOB_ID int,
	@i_availtime bigint,
	@i_acdtime bigint,
	@i_acwtime bigint,
	@i_acwouttime bigint,
	@i_acwintime bigint,
	@i_auxtime bigint,
	@i_auxintime bigint,
	@i_auxouttime bigint,
	@i_acdothertime bigint,
	@acdcalls bigint,
	@acceptable bigint,
	@abncalls bigint,
	@anstime bigint,
	@abntime bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update WFM_Metrics
		Set i_availtime = @i_availtime,
			i_acdtime = @i_acdtime,
			i_acwtime = @i_acwtime,
			i_acwouttime = @i_acwouttime,
			i_acwintime = @i_acwintime,
			i_auxtime = @i_auxtime,
			i_auxintime = @i_auxintime,
			i_auxouttime = @i_auxouttime,
			i_acdothertime = @i_acdothertime,
			acdcalls = @acdcalls,
			acceptable = @acceptable,
			abncalls = @abncalls,
			anstime = @anstime,
			abntime = @abntime
		Where
			row_date = @row_date 
			and starttime = @starttime
			and Vendor_ID = @Vendor_ID
			and LOB_ID = @LOB_ID
END
