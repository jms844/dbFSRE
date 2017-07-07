CREATE VIEW dbo.Vendor_Interval
AS
SELECT        WM.row_date, DATEPART(Hour, WM.interval) * 100 + (DATEPART(Minute, WM.interval) - DATEPART(Minute, WM.interval) % 30) AS starttime, dbo.Vendor.Vendor, dbo.LOB.LOB, SUM(WM.i_acdtime) 
                         + SUM(WM.i_acwtime) + SUM(WM.i_auxintime) + SUM(WM.i_auxouttime) + SUM(WM.i_acdothertime) AS i_busytime, SUM(WM.i_availtime) + SUM(WM.i_acdtime) + SUM(WM.i_acwtime) + SUM(WM.i_auxintime) 
                         + SUM(WM.i_auxouttime) + SUM(WM.i_acdothertime) AS i_productivetime, CAST(SUM(WM.i_acdtime) + SUM(WM.i_acwtime) + SUM(WM.i_auxintime) + SUM(WM.i_auxouttime) + SUM(WM.i_acdothertime) 
                         AS numeric) / NULLIF (CAST(SUM(WM.i_availtime) + SUM(WM.i_acdtime) + SUM(WM.i_acwtime) + SUM(WM.i_auxintime) + SUM(WM.i_auxouttime) + SUM(WM.i_acdothertime) AS numeric), 0) AS Occupancy, 
                         SUM(WM.acdcalls) + SUM(WM.abncalls) AS Volume, SUM(WM.acdcalls) AS Taken, SUM(WM.acceptable) AS acceptable, CAST(SUM(WM.acceptable) AS numeric) / NULLIF (CAST(SUM(WM.acdcalls) 
                         + SUM(WM.abncalls) AS numeric), 0) AS Service_Level
FROM            dbo.hsplit AS WM INNER JOIN
                         dbo.Split ON WM.split = dbo.Split.split INNER JOIN
                         dbo.LOB ON dbo.Split.LOB_ID = dbo.LOB.ID INNER JOIN
                         dbo.Vendor ON WM.vendorID = dbo.Vendor.ID
WHERE        (WM.row_date > GETDATE() - 93)
GROUP BY WM.row_date, DATEPART(Hour, WM.interval) * 100 + (DATEPART(Minute, WM.interval) - DATEPART(Minute, WM.interval) % 30), dbo.LOB.LOB, dbo.Vendor.Vendor

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
         Begin Table = "LOB"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 101
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vendor"
            Begin Extent = 
               Top = 6
               Left = 488
               Bottom = 118
               Right = 674
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WM"
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
               Left = 712
               Bottom = 136
               Right = 898
            End
            DisplayFlags = 280
            TopColumn = 0
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Vendor_Interval';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Vendor_Interval';

