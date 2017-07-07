-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateAuxData 
	-- Add the parameters for the stored procedure here
	@rowdate date = null, 
	@interval datetime2(0) = null,
	@lobID int	= 0,
	@vendorID int = 0,
	@avail bigint = 0,
	@auxtime bigint = 0,
	@break bigint = 0,
	@meeting bigint = 0,
	@lunch bigint = 0,
	@lead bigint = 0,
	@closed bigint = 0,
	@dctr bigint = 0,
	@coaching bigint = 0,
	@train bigint = 0,
	@project bigint = 0,
	@computer bigint = 0,
	@personal bigint = 0,
	@union bigint = 0,
	@outbound bigint = 0,
	@mentoring bigint = 0,
	@aux bigint = 0,
	@eos bigint = 0,
	@chat bigint = 0,
	@pcbootup bigint = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update AuxData
	Set
		i_availtime = @avail
		,i_auxtime = @auxtime
		,[Break] = @break
		,[Meeting] = @meeting
		,Lunch = @lunch
		,Lead = @lead
		,Closed = @closed
		,DCTR = @dctr
		,Coach_Meeting = @coaching
		,Train = @train
		,Project = @project
		,Computer = @computer
		,Personal = @personal
		,[Union] = @union
		,Outbound = @outbound
		,Mentoring = @mentoring
		,Aux = @aux
		,EOS = @eos
		,Chat = @chat
		,PCBootup = @pcbootup
	Where
		row_date = @rowdate
		and interval = @interval
		and lobID = @lobID
		and Vendor_ID = @vendorID
END
