CREATE TABLE [dbo].[IntervalDef] (
    [ID]          SMALLINT IDENTITY (1, 1) NOT NULL,
    [qInterval]   TIME (0) NULL,
    [hInterval]   TIME (0) NULL,
    [hrInterval]  TIME (0) NULL,
    [IntInterval] SMALLINT NULL,
    [hourNum]     TINYINT  NULL,
    [minuteNum]   TINYINT  NULL,
    CONSTRAINT [PK_IntervalDef] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_IntervalDef]
    ON [dbo].[IntervalDef]([qInterval] ASC);

