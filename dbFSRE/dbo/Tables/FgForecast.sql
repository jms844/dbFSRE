CREATE TABLE [dbo].[FgForecast] (
    [FOR_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [FOR_RUN_SK] NUMERIC (15, 1) NOT NULL,
    [RUN_NAME]   NVARCHAR (30)   NULL,
    [INTERVAL]   DATETIME        NOT NULL,
    [FOR_DATE]   DATETIME        NOT NULL,
    [FOR_WEEK]   DATETIME        NULL,
    [VOL]        NUMERIC (15, 1) NULL,
    [CRE_TS]     DATETIME        NULL,
    [MEMO]       NVARCHAR (MAX)  NULL,
    [Current]    BIT             NULL,
    [WeekNum]    AS              (((datepart(year,[FOR_DATE])-datepart(year,getdate()))*(52)+datepart(week,[FOR_DATE]))-datepart(week,getdate())),
    CONSTRAINT [PK_FgForecast] PRIMARY KEY CLUSTERED ([FOR_GRP_SK] ASC, [FOR_RUN_SK] ASC, [INTERVAL] ASC, [FOR_DATE] ASC)
);

