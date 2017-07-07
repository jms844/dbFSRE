CREATE TABLE [dbo].[VendorForecastPattern] (
    [vfpID]          INT        NOT NULL,
    [vendorID]       INT        NULL,
    [lobID]          INT        NULL,
    [dowNum]         TINYINT    NULL,
    [hInterval]      TIME (0)   NULL,
    [hourNum]        TINYINT    NULL,
    [minuteNum]      TINYINT    NULL,
    [vendor_arrived] INT        NULL,
    [i_arrived]      INT        NULL,
    [Alloc]          FLOAT (53) NULL,
    CONSTRAINT [PK_VendorForecastPattern] PRIMARY KEY CLUSTERED ([vfpID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_VendorForecastPattern]
    ON [dbo].[VendorForecastPattern]([vendorID] ASC, [lobID] ASC, [dowNum] ASC, [hInterval] ASC);

