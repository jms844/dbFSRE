﻿CREATE TABLE [dbo].[DEPT] (
    [ID]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (50) NULL,
    [Abbrev] NVARCHAR (50) NULL,
    CONSTRAINT [PK_DEPT] PRIMARY KEY CLUSTERED ([ID] ASC)
);

