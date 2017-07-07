-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateSplit 
	-- Add the parameters for the stored procedure here
	@vID as int,
	@acd int, 
	@split int,
	@lID as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Begin Tran
		update Split set LOB_ID = @lID 
		Where 
			acd = @acd 
				and split = @split 
				and Vendor_ID = @vID
		if @@ROWCOUNT = 0
		begin
			insert into Split(Vendor_ID, acd, split, LOB_ID)
				Values(@vID, @acd, @split, @lID)
		end
	Commit Tran
END
