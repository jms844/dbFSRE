CREATE TABLE [dbo].[Product_Category] (
    [ID]   INT  IDENTITY (1, 1) NOT NULL,
    [Name] TEXT NULL,
    CONSTRAINT [PK_Product_Category] PRIMARY KEY CLUSTERED ([ID] ASC)
);

