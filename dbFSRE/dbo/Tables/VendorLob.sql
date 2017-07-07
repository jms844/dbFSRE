CREATE TABLE [dbo].[VendorLob] (
    [vendorLobID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [vendorID]    INT      NULL,
    [lobID]       INT      NULL,
    CONSTRAINT [PK_VendorLob] PRIMARY KEY CLUSTERED ([vendorLobID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_VendorLob]
    ON [dbo].[VendorLob]([vendorID] ASC, [lobID] ASC);

