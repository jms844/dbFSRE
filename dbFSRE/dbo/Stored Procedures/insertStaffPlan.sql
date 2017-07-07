-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE insertStaffPlan 
	-- Add the parameters for the stored procedure here
	@Week date,
	@LOB varchar(30),
	@Plan varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into Staff_Plan ([Week],[LOB],[Plan])
		Values(@Week, @LOB, @Plan)
END
