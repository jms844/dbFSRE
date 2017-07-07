CREATE TABLE [recent].[hAgentDay] (
    [vendorID]  INT  NOT NULL,
    [latestDay] DATE NULL,
    CONSTRAINT [PK_hAgentDay] PRIMARY KEY CLUSTERED ([vendorID] ASC),
    CONSTRAINT [FK_hAgentDay_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);

