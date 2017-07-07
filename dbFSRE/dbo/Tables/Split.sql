CREATE TABLE [dbo].[Split] (
    [Split_ID]  INT      IDENTITY (1, 1) NOT NULL,
    [Vendor_ID] INT      NULL,
    [acd]       SMALLINT NOT NULL,
    [split]     SMALLINT NOT NULL,
    [LOB_ID]    INT      NULL,
    [CTF]       BIT      NULL,
    CONSTRAINT [PK_Split] PRIMARY KEY CLUSTERED ([Split_ID] ASC),
    CONSTRAINT [FK_Split_LOB] FOREIGN KEY ([LOB_ID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_Split_Vendor] FOREIGN KEY ([Vendor_ID]) REFERENCES [dbo].[Vendor] ([ID])
);

