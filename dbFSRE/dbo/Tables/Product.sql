CREATE TABLE [dbo].[Product] (
    [ID]    INT  IDENTITY (1, 1) NOT NULL,
    [catID] INT  NULL,
    [Name]  TEXT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Product_Product_Category] FOREIGN KEY ([catID]) REFERENCES [dbo].[Product_Category] ([ID])
);

