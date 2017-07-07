CREATE TABLE [dbo].[SplitDef] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [vendorID] INT           NOT NULL,
    [acd]      SMALLINT      NOT NULL,
    [split]    SMALLINT      NOT NULL,
    [name]     VARCHAR (180) NULL,
    CONSTRAINT [PK_SplitDef_1] PRIMARY KEY CLUSTERED ([vendorID] ASC, [acd] ASC, [split] ASC),
    CONSTRAINT [FK_SplitDef_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);

