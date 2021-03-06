﻿CREATE TABLE [dbo].[EMP_GRP_NODE_STG] (
    [UPD_TCS_LOGIN_SK] NUMERIC (15, 1) NULL,
    [UPD_TS]           DATETIME        NULL,
    [EMP_GRP_NODE_SK]  NUMERIC (15, 1) NULL,
    [EMP_GRP_TREE_SK]  NUMERIC (15, 1) NULL,
    [CODE]             NVARCHAR (30)   NULL,
    [DESCR]            NVARCHAR (30)   NULL,
    [LEFT_VISIT_NUM]   NUMERIC (15, 1) NULL,
    [RIGHT_VISIT_NUM]  NUMERIC (15, 1) NULL,
    [ALLOW_ASS_FLAG]   NVARCHAR (1)    NULL,
    [ALLOW_LDR_FLAG]   NVARCHAR (1)    NULL,
    [EMP_GRP_CLASS_SK] NUMERIC (15, 1) NULL
);

