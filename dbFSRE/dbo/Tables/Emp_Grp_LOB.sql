CREATE TABLE [dbo].[Emp_Grp_LOB] (
    [ID]              INT             IDENTITY (1, 1) NOT NULL,
    [EMP_GRP_NODE_SK] NUMERIC (15, 1) NOT NULL,
    [lobID]           INT             NULL,
    [vendorID]        INT             NULL,
    [siteID]          INT             NULL,
    CONSTRAINT [PK_Emp_Grp_LOB] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Emp_Grp_LOB_Emp_Grp] FOREIGN KEY ([EMP_GRP_NODE_SK]) REFERENCES [dbo].[Emp_Grp] ([EMP_GRP_NODE_SK]),
    CONSTRAINT [FK_Emp_Grp_LOB_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_Emp_Grp_LOB_Site] FOREIGN KEY ([siteID]) REFERENCES [dbo].[Site] ([ID]),
    CONSTRAINT [FK_Emp_Grp_LOB_Vendor] FOREIGN KEY ([vendorID]) REFERENCES [dbo].[Vendor] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Emp_Grp_LOB]
    ON [dbo].[Emp_Grp_LOB]([EMP_GRP_NODE_SK] ASC, [lobID] ASC, [vendorID] ASC, [siteID] ASC);

