CREATE TABLE [dbo].[SplitTime] (
    [vendorID] INT      NOT NULL,
    [acd]      SMALLINT NOT NULL,
    [split]    SMALLINT NOT NULL,
    [monthNum] INT      NOT NULL,
    [yearNum]  INT      NOT NULL,
    CONSTRAINT [PK_SplitTime] PRIMARY KEY CLUSTERED ([vendorID] ASC, [acd] ASC, [split] ASC, [monthNum] ASC, [yearNum] ASC),
    CONSTRAINT [FK_SplitTime_SplitDef] FOREIGN KEY ([vendorID], [acd], [split]) REFERENCES [dbo].[SplitDef] ([vendorID], [acd], [split])
);

