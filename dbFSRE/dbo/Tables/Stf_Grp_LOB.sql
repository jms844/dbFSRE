CREATE TABLE [dbo].[Stf_Grp_LOB] (
    [ID]         INT             IDENTITY (1, 1) NOT NULL,
    [STF_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [lobID]      INT             NULL,
    [vendorID]   INT             NULL,
    [siteID]     INT             NULL,
    CONSTRAINT [PK_Stf_Grp_LOB] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Stf_Grp_LOB_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_Stf_Grp_LOB_Site] FOREIGN KEY ([siteID]) REFERENCES [dbo].[Site] ([ID]),
    CONSTRAINT [FK_Stf_Grp_LOB_Stf_Grp] FOREIGN KEY ([STF_GRP_SK]) REFERENCES [dbo].[Stf_Grp] ([STF_GRP_SK]),
    CONSTRAINT [FK_Stf_Grp_LOB_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Stf_Grp_LOB]
    ON [dbo].[Stf_Grp_LOB]([STF_GRP_SK] ASC, [lobID] ASC, [vendorID] ASC, [siteID] ASC);

