﻿-- =============================================
-- Author:		Jaryn Seidl
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[rebuildStgHagent]
	-- Add the parameters for the stored procedure here
--	@vendorID int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	ALTER INDEX [PK_hAgentStg] ON [dbo].[hAgentStg] REBUILD PARTITION = ALL WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
END
