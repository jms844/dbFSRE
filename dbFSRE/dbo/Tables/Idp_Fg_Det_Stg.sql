CREATE TABLE [dbo].[Idp_Fg_Det_Stg] (
    [ID]         BIGINT          IDENTITY (1, 1) NOT NULL,
    [IDP_SK]     NUMERIC (15, 1) NULL,
    [FOR_GRP_SK] NUMERIC (15, 1) NULL,
    [Element]    VARCHAR (30)    NULL,
    [Period]     DATETIME        NULL,
    [Value]      DECIMAL (15, 2) NULL,
    CONSTRAINT [PK_Idp_Fg_Det_Stg] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Idp_Fg_Det_Stg_For_Grp] FOREIGN KEY ([FOR_GRP_SK]) REFERENCES [dbo].[For_Grp] ([FOR_GRP_SK])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Idp_Fg_Det_Stg]
    ON [dbo].[Idp_Fg_Det_Stg]([IDP_SK] ASC, [FOR_GRP_SK] ASC, [Element] ASC, [Period] ASC);

