CREATE TABLE [dbo].[DateDef] (
    [row_date]     DATE          NOT NULL,
    [dayNum]       INT           NULL,
    [dowNum]       INT           NULL,
    [englishDow]   NVARCHAR (30) NULL,
    [weekNum]      INT           NULL,
    [weekDate]     DATE          NULL,
    [monthNum]     INT           NULL,
    [monthDate]    DATE          NULL,
    [englishMonth] NVARCHAR (30) NULL,
    [quarterNum]   INT           NULL,
    [yearNum]      INT           NULL,
    CONSTRAINT [PK_DateDef] PRIMARY KEY CLUSTERED ([row_date] ASC)
);

