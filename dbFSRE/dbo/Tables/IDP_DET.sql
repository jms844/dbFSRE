CREATE TABLE [dbo].[IDP_DET] (
    [IDP_SK]     NUMERIC (15, 1) NOT NULL,
    [STF_GRP_SK] NUMERIC (15, 1) NOT NULL,
    [Element]    VARCHAR (30)    NOT NULL,
    [Period]     DATETIME        NOT NULL,
    [Value]      NUMERIC (15, 2) NULL,
    CONSTRAINT [PK_IDP_DET] PRIMARY KEY CLUSTERED ([IDP_SK] ASC, [STF_GRP_SK] ASC, [Element] ASC, [Period] ASC) WITH (PAD_INDEX = ON)
);

