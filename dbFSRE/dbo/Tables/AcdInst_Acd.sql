CREATE TABLE [dbo].[AcdInst_Acd] (
    [ID]          INT             IDENTITY (1, 1) NOT NULL,
    [ACD_INST_SK] NUMERIC (15, 1) NULL,
    [acd]         SMALLINT        NULL,
    CONSTRAINT [PK_AcdInst_Acd] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_AcdInst_Acd_ACD_INST] FOREIGN KEY ([ACD_INST_SK]) REFERENCES [dbo].[ACD_INST] ([ACD_INST_SK])
);

