-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateClassDet 
	-- Add the parameters for the stored procedure here
	@classID bigint = 0, 
	@weekVal date = null,
	@hc int = 0,
	@hours int = 0,
	@aht int = 0,
	@concurrency int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update SP_Class_Det
		Set HC = Cast(@hc as tinyint)
			,[Hours] = Cast(@hours as tinyint)
			,AHT = Cast(@aht as smallint)
			,Concurrency = Cast(@concurrency as tinyint)
	Where Class_ID = @classID and [Week] = @weekVal
END
