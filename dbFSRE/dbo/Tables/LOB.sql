CREATE TABLE [dbo].[LOB] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [deptID]         INT            NULL,
    [LOB]            NVARCHAR (50)  NOT NULL,
    [FTE Definition] INT            NULL,
    [imageURL]       NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_LOB] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_LOB_DEPT] FOREIGN KEY ([deptID]) REFERENCES [dbo].[DEPT] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_LOB]
    ON [dbo].[LOB]([LOB] ASC);

