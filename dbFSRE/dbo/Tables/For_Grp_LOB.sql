CREATE TABLE [dbo].[For_Grp_LOB] (
    [ID]         INT             IDENTITY (1, 1) NOT NULL,
    [FOR_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [lobID]      INT             NULL,
    [vendorID]   INT             NULL,
    [siteID]     INT             NULL,
    CONSTRAINT [PK_For_Grp_LOB] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_For_Grp_LOB_For_Grp] FOREIGN KEY ([FOR_GRP_SK]) REFERENCES [dbo].[For_Grp] ([FOR_GRP_SK]),
    CONSTRAINT [FK_For_Grp_LOB_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_For_Grp_LOB_Site] FOREIGN KEY ([siteID]) REFERENCES [dbo].[Site] ([ID]),
    CONSTRAINT [FK_For_Grp_LOB_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_For_Grp_LOB]
    ON [dbo].[For_Grp_LOB]([FOR_GRP_SK] ASC);

