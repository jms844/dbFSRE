CREATE VIEW dbo.Staff_Plan_LOB
AS
SELECT        dbo.StaffPlan.Week, dbo.LOB.ID, dbo.LOB.LOB, AVG(dbo.LOB.[FTE Definition]) AS [FTE Definition], SUM(dbo.StaffPlan.[Planned Attrition] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 
                         0) AS [Planned Attrition], SUM(dbo.StaffPlan.[Planned Occupancy] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Occupancy], SUM(dbo.StaffPlan.[Planned HC]) 
                         AS Headcount, SUM(dbo.StaffPlan.[Planned AHT] * dbo.StaffPlan.[Planned Capacity]) / NULLIF (SUM(dbo.StaffPlan.[Planned Capacity]), 0) AS AHT, SUM(dbo.StaffPlan.[Planned FTE]) AS FTE, 
                         SUM(dbo.StaffPlan.[Tenured FTE]) AS [Tenured FTE], SUM(dbo.StaffPlan.[Non-Tenured FTE]) AS [Non-Tenured FTE], SUM(dbo.StaffPlan.[Nesting FTE]) AS [Nesting FTE], SUM(dbo.StaffPlan.[Training FTE]) 
                         AS [Training FTE], SUM(dbo.StaffPlan.[Planned Capacity]) AS Capacity, SUM(dbo.StaffPlan.[Tenured Capacity]) AS [Tenured Capacity], SUM(dbo.StaffPlan.[Non-Tenured Capacity]) AS [Non-Tenured Capacity], 
                         SUM(dbo.StaffPlan.[Nesting Capacity]) AS [Nesting Capacity], SUM(dbo.StaffPlan.[Training Capacity]) AS [Training Capacity], SUM(dbo.StaffPlan.[Planned ABS] * dbo.StaffPlan.[Planned FTE]) 
                         / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned ABS], SUM(dbo.StaffPlan.[Planned PTO] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Time Off], 
                         SUM(dbo.StaffPlan.[Planned LOA] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned LOA], SUM(dbo.StaffPlan.[Planned Break] * dbo.StaffPlan.[Planned FTE]) 
                         / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Break], SUM(dbo.StaffPlan.[Planned Coach] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Coach], 
                         SUM(dbo.StaffPlan.[Planned Lead] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Lead], SUM(dbo.StaffPlan.[Planned Meeting] * dbo.StaffPlan.[Planned FTE]) 
                         / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Meeting], SUM(dbo.StaffPlan.[Planned Personal] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Personal], 
                         SUM(dbo.StaffPlan.[Planned Preshift] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Preshift], SUM(dbo.StaffPlan.[Planned Project] * dbo.StaffPlan.[Planned FTE]) 
                         / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Project], SUM(dbo.StaffPlan.[Planned System] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned System], 
                         SUM(dbo.StaffPlan.[Planned Training] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Training], 
                         SUM(dbo.StaffPlan.[Planned Unaccounted Time] * dbo.StaffPlan.[Planned FTE]) / NULLIF (SUM(dbo.StaffPlan.[Planned FTE]), 0) AS [Planned Unaccounted Time]
FROM            dbo.StaffPlan INNER JOIN
                         dbo.LOB ON dbo.StaffPlan.lobID = dbo.LOB.ID
GROUP BY dbo.StaffPlan.Week, dbo.LOB.LOB, dbo.LOB.ID

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
         Begin Table = "StaffPlan"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 290
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "LOB"
            Begin Extent = 
               Top = 6
               Left = 328
               Bottom = 119
               Right = 514
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Staff_Plan_LOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Staff_Plan_LOB';

