CREATE TABLE [dbo].[Vendor] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [Vendor]     NVARCHAR (50)  NULL,
    [Abbrev]     NVARCHAR (5)   NULL,
    [VendorType] NVARCHAR (20)  NULL,
    [imageURL]   NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Vendor]
    ON [dbo].[Vendor]([Vendor] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Abbrev]
    ON [dbo].[Vendor]([Abbrev] ASC);

