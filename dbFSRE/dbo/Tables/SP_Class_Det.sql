CREATE TABLE [dbo].[SP_Class_Det] (
    [ID]          BIGINT        IDENTITY (1, 1) NOT NULL,
    [Class_ID]    BIGINT        NULL,
    [Week]        DATE          NULL,
    [Last Week]   BIT           NULL,
    [Phase]       NVARCHAR (20) NULL,
    [HC]          TINYINT       NULL,
    [Hours]       TINYINT       NULL,
    [AHT]         SMALLINT      NULL,
    [Concurrency] TINYINT       NULL,
    CONSTRAINT [PK_SP_Class_Det] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SP_Class_Det_SP_Class_Set] FOREIGN KEY ([Class_ID]) REFERENCES [dbo].[SP_Class_Set] ([ID]) ON DELETE CASCADE
);

