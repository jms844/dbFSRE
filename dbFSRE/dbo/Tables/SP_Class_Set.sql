CREATE TABLE [dbo].[SP_Class_Set] (
    [ID]             BIGINT IDENTITY (1, 1) NOT NULL,
    [lobID]          INT    NULL,
    [siteID]         INT    NULL,
    [Start Week]     DATE   NULL,
    [Class #]        INT    NULL,
    [Weeks Training] INT    NULL,
    [Weeks Nesting]  INT    NULL,
    [Weeks Tenure]   INT    NULL,
    CONSTRAINT [PK_SP_Class_Set] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SP_Class_Set_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID]),
    CONSTRAINT [FK_SP_Class_Set_Site] FOREIGN KEY ([siteID]) REFERENCES [dbo].[Site] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_SP_Class_Set]
    ON [dbo].[SP_Class_Set]([lobID] ASC, [siteID] ASC, [Start Week] ASC, [Class #] ASC);

