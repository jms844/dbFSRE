﻿CREATE TABLE [dbo].[siteDataStg] (
    [row_date]      DATE            NULL,
    [interval]      TIME (0)        NULL,
    [DEPT_SK]       NUMERIC (15, 1) NULL,
    [SITE_SK]       NUMERIC (15, 1) NULL,
    [i_stafftime]   BIGINT          NULL,
    [i_availtime]   BIGINT          NULL,
    [i_ringtime]    BIGINT          NULL,
    [ringtime]      BIGINT          NULL,
    [ringcalls]     BIGINT          NULL,
    [i_acdtime]     BIGINT          NULL,
    [acdtime]       BIGINT          NULL,
    [acdcalls]      BIGINT          NULL,
    [i_acwtime]     BIGINT          NULL,
    [acwtime]       BIGINT          NULL,
    [i_acwouttime]  BIGINT          NULL,
    [acwouttime]    BIGINT          NULL,
    [acwoutcalls]   BIGINT          NULL,
    [i_acwintime]   BIGINT          NULL,
    [acwintime]     BIGINT          NULL,
    [acwincalls]    BIGINT          NULL,
    [i_auxouttime]  BIGINT          NULL,
    [auxouttime]    BIGINT          NULL,
    [auxoutcalls]   BIGINT          NULL,
    [i_auxintime]   BIGINT          NULL,
    [auxintime]     BIGINT          NULL,
    [auxincalls]    BIGINT          NULL,
    [holdtime]      BIGINT          NULL,
    [holdcalls]     BIGINT          NULL,
    [transferred]   BIGINT          NULL,
    [conference]    BIGINT          NULL,
    [abntime]       BIGINT          NULL,
    [abncalls]      BIGINT          NULL,
    [holdabncalls]  BIGINT          NULL,
    [i_auxtime]     BIGINT          NULL,
    [Break]         BIGINT          NULL,
    [Meeting]       BIGINT          NULL,
    [Lunch]         BIGINT          NULL,
    [Lead]          BIGINT          NULL,
    [Closed]        BIGINT          NULL,
    [DCTR]          BIGINT          NULL,
    [Coach_Meeting] BIGINT          NULL,
    [Train]         BIGINT          NULL,
    [Project]       BIGINT          NULL,
    [Computer]      BIGINT          NULL,
    [Personal]      BIGINT          NULL,
    [Union]         BIGINT          NULL,
    [Outbound]      BIGINT          NULL,
    [Mentoring]     BIGINT          NULL,
    [Aux]           BIGINT          NULL,
    [EOS]           BIGINT          NULL,
    [Chat]          BIGINT          NULL,
    [PCBootup]      BIGINT          NULL
);

