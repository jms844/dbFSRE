-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[updateIDPFG] 
	-- Add the parameters for the stored procedure here
	@IDP_SK numeric, 
	@FOR_GRP_SK numeric,
	@Period as datetime2(0),
	@ORG_FOR_VOL as numeric,
	@RVS_FOR_VOL as numeric
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update IDP_For_Grp_DET
		Set [ORG_FOR_VOL] = @ORG_FOR_VOL, [RVS_FOR_VOL] = @RVS_FOR_VOL
	Where [IDP_SK] = @IDP_SK and [FOR_GRP_SK] = @FOR_GRP_SK and [Period] = @Period

	if @@ROWCOUNT = 0
	Begin
		insert into IDP_For_Grp_DET(IDP_SK,FOR_GRP_SK,[Period],[ORG_FOR_VOL],[RVS_FOR_VOL])
			Values(@IDP_SK, @FOR_GRP_SK, @Period, @ORG_FOR_VOL, @RVS_FOR_VOL)
	End
END
