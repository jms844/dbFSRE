CREATE TABLE [dbo].[FgForecastDays] (
    [FOR_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [FOR_RUN_SK] NUMERIC (15, 1) NOT NULL,
    [RUN_NAME]   NVARCHAR (30)   NULL,
    [FOR_DATE]   DATETIME        NOT NULL,
    [FOR_WEEK]   DATETIME        NULL,
    [VOL]        NUMERIC (15, 1) NULL,
    [CRE_TS]     DATETIME        NULL,
    [MEMO]       NVARCHAR (MAX)  NULL,
    [Current]    BIT             NULL,
    CONSTRAINT [PK_FgForecastDays] PRIMARY KEY CLUSTERED ([FOR_GRP_SK] ASC, [FOR_RUN_SK] ASC, [FOR_DATE] ASC)
);

