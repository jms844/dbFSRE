-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE updateIdpFgDet 
	-- Add the parameters for the stored procedure here
	@idpSk numeric(15,1) = 0, 
	@forGrpSk numeric(15,1) = 0,
	@element varchar(30) = null,
	@period datetime = null,
	@value decimal(15,2) = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update IDP_FG_DET
	Set [Value] = @value
	Where
		IDP_SK = @idpSk
		and FOR_GRP_SK = @forGrpSk
		and Element = @element
		and [Period] = @period
END
