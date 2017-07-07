﻿CREATE TABLE [recent].[Forecast] (
    [FOR_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [CRE_TS]     DATETIME        NULL,
    CONSTRAINT [PK_Forecast] PRIMARY KEY CLUSTERED ([FOR_GRP_SK] ASC)
);

