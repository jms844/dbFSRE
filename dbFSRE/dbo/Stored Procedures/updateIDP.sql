-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateIDP] 
	-- Add the parameters for the stored procedure here
	@IDP_SK numeric, 
	@STF_GRP_SK numeric,
	@Element as nvarchar(30),
	@Period as nvarchar(30),
	@Value as numeric
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update IDP_DET
		Set [Value] = @Value
	Where IDP_SK = @IDP_SK and STF_GRP_SK = @STF_GRP_SK and [Element] = @Element and [Period] = @Period

	if @@ROWCOUNT = 0
	Begin
		insert into IDP_DET(IDP_SK, STF_GRP_SK,Element,[Period],[Value])
			Values(@IDP_SK, @STF_GRP_SK, @Element, convert(datetime,@Period,20), @Value)
	End
END
