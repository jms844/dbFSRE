CREATE TABLE [dbo].[Site] (
    [ID]              INT             IDENTITY (1, 1) NOT NULL,
    [Site]            NVARCHAR (30)   NULL,
    [vendorID]        INT             NULL,
    [Location]        VARCHAR (50)    NULL,
    [EMP_GRP_NODE_SK] NUMERIC (15, 1) NULL,
    CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Site_EMP_GRP_NODE] FOREIGN KEY ([EMP_GRP_NODE_SK]) REFERENCES [dbo].[EMP_GRP_NODE] ([EMP_GRP_NODE_SK]),
    CONSTRAINT [FK_Site_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Site]
    ON [dbo].[Site]([Site] ASC);

