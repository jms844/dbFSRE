﻿CREATE TABLE [dbo].[IDP] (
    [IDP_SK]       NUMERIC (15, 1) NOT NULL,
    [START_MOMENT] NUMERIC (15, 1) NULL,
    [STOP_MOMENT]  NUMERIC (15, 1) NULL,
    [CODE]         NVARCHAR (30)   NULL,
    CONSTRAINT [PK_IDP] PRIMARY KEY CLUSTERED ([IDP_SK] ASC)
);

