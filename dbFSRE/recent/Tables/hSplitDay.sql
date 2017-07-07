CREATE TABLE [recent].[hSplitDay] (
    [vendorID]  INT  NOT NULL,
    [latestDay] DATE NULL,
    CONSTRAINT [PK_hSplitDay] PRIMARY KEY CLUSTERED ([vendorID] ASC),
    CONSTRAINT [FK_hSplitDay_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);

