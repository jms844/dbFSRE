CREATE TABLE [dbo].[LOB_Prod] (
    [lobID]  INT NOT NULL,
    [prodID] INT NOT NULL,
    CONSTRAINT [PK_LOB_Prod] PRIMARY KEY CLUSTERED ([lobID] ASC, [prodID] ASC),
    CONSTRAINT [FK_LOB_Prod_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_LOB_Prod_Product] FOREIGN KEY ([prodID]) REFERENCES [dbo].[Product] ([ID])
);

