CREATE TABLE [dbo].[FgForecastWeeks] (
    [FOR_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [FOR_RUN_SK] NUMERIC (15, 1) NOT NULL,
    [RUN_NAME]   NVARCHAR (30)   NULL,
    [FOR_WEEK]   DATETIME        NOT NULL,
    [VOL]        NUMERIC (15, 1) NULL,
    [CRE_TS]     DATETIME        NULL,
    [MEMO]       NVARCHAR (MAX)  NULL,
    [Current]    BIT             NULL,
    CONSTRAINT [PK_FgForecastWeeks] PRIMARY KEY CLUSTERED ([FOR_GRP_SK] ASC, [FOR_RUN_SK] ASC, [FOR_WEEK] ASC)
);

