CREATE VIEW dbo.hSplitLobVendor
AS
SELECT        dbo.hSplit.row_date, CAST(DATEADD(minute, - (DATEPART(minute, dbo.hSplit.interval) % 30), dbo.hSplit.interval) AS time(0)) AS interval, dbo.hSplit.vendorID, dbo.Split.LOB_ID, SUM(dbo.hSplit.i_availtime) 
                         AS i_availtime, SUM(dbo.hSplit.anstime) AS anstime, SUM(dbo.hSplit.i_ringtime) AS i_ringtime, SUM(dbo.hSplit.ringtime) AS ringtime, SUM(dbo.hSplit.ringcalls) AS ringcalls, SUM(dbo.hSplit.i_acdtime) 
                         AS i_acdtime, SUM(dbo.hSplit.acdtime) AS acdtime, SUM(dbo.hSplit.acdcalls) AS acdcalls, SUM(dbo.hSplit.i_acwtime) AS i_acwtime, SUM(dbo.hSplit.acwtime) AS acwtime, SUM(dbo.hSplit.i_acwouttime) 
                         AS i_acwouttime, SUM(dbo.hSplit.acwouttime) AS acwouttime, SUM(dbo.hSplit.acwoutcalls) AS acwoutcalls, SUM(dbo.hSplit.i_acwintime) AS i_acwintime, SUM(dbo.hSplit.acwintime) AS acwintime, 
                         SUM(dbo.hSplit.acwincalls) AS acwincalls, SUM(dbo.hSplit.i_auxtime) AS i_auxtime, SUM(dbo.hSplit.i_auxouttime) AS i_auxouttime, SUM(dbo.hSplit.auxouttime) AS auxouttime, SUM(dbo.hSplit.auxoutcalls) 
                         AS auxoutcalls, SUM(dbo.hSplit.i_auxintime) AS i_auxintime, SUM(dbo.hSplit.auxintime) AS auxintime, SUM(dbo.hSplit.auxincalls) AS auxincalls, SUM(dbo.hSplit.i_othertime) AS i_othertime, 
                         SUM(dbo.hSplit.i_acdothertime) AS i_acdothertime, SUM(dbo.hSplit.holdtime) AS holdtime, SUM(dbo.hSplit.holdcalls) AS holdcalls, SUM(dbo.hSplit.holdabncalls) AS holdabncalls, SUM(dbo.hSplit.transferred) 
                         AS transferred, SUM(dbo.hSplit.conference) AS conference, SUM(dbo.hSplit.abncalls) AS abncalls, SUM(dbo.hSplit.abntime) AS abntime, SUM(dbo.hSplit.acceptable) AS acceptable, SUM(dbo.hSplit.i_arrived) 
                         AS i_arrived, SUM(dbo.hSplit.dequecalls) AS dequecalls, SUM(dbo.hSplit.busycalls) AS busycalls, SUM(dbo.hSplit.disccalls) AS disccalls, SUM(dbo.hSplit.outflowcalls) AS outflowcalls
FROM            dbo.hSplit INNER JOIN
                         dbo.Split ON dbo.hSplit.vendorID = dbo.Split.Vendor_ID AND dbo.hSplit.acd = dbo.Split.acd AND dbo.hSplit.split = dbo.Split.split
WHERE        (dbo.Split.LOB_ID IS NOT NULL)
GROUP BY dbo.hSplit.row_date, CAST(DATEADD(minute, - (DATEPART(minute, dbo.hSplit.interval) % 30), dbo.hSplit.interval) AS time(0)), dbo.hSplit.vendorID, dbo.Split.LOB_ID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "hSplit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Split"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 136
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'hSplitLobVendor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'hSplitLobVendor';

