﻿CREATE TABLE [dbo].[hSplit] (
    [row_date]       DATE     NOT NULL,
    [interval]       TIME (0) NOT NULL,
    [vendorID]       INT      NOT NULL,
    [acd]            SMALLINT NOT NULL,
    [split]          SMALLINT NOT NULL,
    [i_availtime]    INT      NULL,
    [i_ringtime]     INT      NULL,
    [ringtime]       INT      NULL,
    [ringcalls]      SMALLINT NULL,
    [i_acdtime]      INT      NULL,
    [acdtime]        INT      NULL,
    [acdcalls]       SMALLINT NULL,
    [i_acwtime]      INT      NULL,
    [acwtime]        INT      NULL,
    [i_acwouttime]   INT      NULL,
    [acwouttime]     INT      NULL,
    [acwoutcalls]    SMALLINT NULL,
    [i_acwintime]    INT      NULL,
    [acwintime]      INT      NULL,
    [acwincalls]     SMALLINT NULL,
    [i_auxtime]      INT      NULL,
    [i_auxouttime]   INT      NULL,
    [auxouttime]     INT      NULL,
    [auxoutcalls]    SMALLINT NULL,
    [i_auxintime]    INT      NULL,
    [auxintime]      INT      NULL,
    [auxincalls]     SMALLINT NULL,
    [i_othertime]    INT      NULL,
    [i_acdothertime] INT      NULL,
    [holdtime]       INT      NULL,
    [holdcalls]      SMALLINT NULL,
    [holdabncalls]   SMALLINT NULL,
    [transferred]    SMALLINT NULL,
    [conference]     SMALLINT NULL,
    [abncalls]       SMALLINT NULL,
    [abntime]        INT      NULL,
    [acceptable]     SMALLINT NULL,
    [i_arrived]      INT      NULL,
    [dequecalls]     SMALLINT NULL,
    [busycalls]      SMALLINT NULL,
    [disccalls]      SMALLINT NULL,
    [outflowcalls]   SMALLINT NULL,
    [anstime]        INT      NULL,
    [monthNum]       TINYINT  NULL,
    [yearNum]        SMALLINT NULL,
    CONSTRAINT [PK_hSplit] PRIMARY KEY CLUSTERED ([row_date] ASC, [interval] ASC, [vendorID] ASC, [acd] ASC, [split] ASC) WITH (PAD_INDEX = ON) ON [hSplitPartitionScheme] ([row_date])
);

