CREATE TABLE [dbo].[StaffPlan_LOB] (
    [ID]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [lobID]           INT            NULL,
    [Week]            DATE           NULL,
    [Run Rate %]      NUMERIC (5, 4) NULL,
    [Forecast Volume] BIGINT         NULL,
    CONSTRAINT [PK_StaffPlan_LOB] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_StaffPlan_LOB_LOB] FOREIGN KEY ([lobID]) REFERENCES [dbo].[LOB] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_StaffPlan_LOB]
    ON [dbo].[StaffPlan_LOB]([lobID] ASC, [Week] ASC);

