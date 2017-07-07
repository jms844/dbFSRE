CREATE TABLE [dbo].[EMP_STG] (
    [EMP_SK]            NUMERIC (15, 1) NULL,
    [ID]                NVARCHAR (10)   NULL,
    [LAST_NAME]         NVARCHAR (30)   NULL,
    [FIRST_NAME]        NVARCHAR (30)   NULL,
    [EFF_HIRE_NOM_DATE] NUMERIC (15, 1) NULL,
    [TERM_NOM_DATE]     NUMERIC (15, 1) NULL,
    [ACTIVE_FLAG]       NVARCHAR (1)    NULL,
    [SHORT_NAME]        NVARCHAR (30)   NULL,
    [SORT_NAME]         NVARCHAR (60)   NULL,
    [TIME_ZONE_SK]      NUMERIC (15, 1) NULL,
    [SENIORITY]         NVARCHAR (12)   NULL,
    [EMAIL_ADR]         NVARCHAR (255)  NULL,
    [MEMO]              NVARCHAR (MAX)  NULL,
    [UPD_TCS_LOGIN_SK]  NUMERIC (15, 1) NULL,
    [UPD_TS]            DATETIME        NULL,
    [IM_USR_NAME]       NVARCHAR (255)  NULL
);

