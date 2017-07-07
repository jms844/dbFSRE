CREATE TABLE [recent].[hSplitInterval] (
    [vendorID]       INT      NOT NULL,
    [latestInterval] DATETIME NULL,
    CONSTRAINT [PK_hSplitInterval] PRIMARY KEY CLUSTERED ([vendorID] ASC),
    CONSTRAINT [FK_hSplitInterval_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);

