CREATE VIEW dbo.siteLob
AS
SELECT        dbo.siteData.row_date, dbo.siteData.interval, egl1.lobID, egl2.siteID, SUM(dbo.siteData.i_stafftime) AS i_stafftime, SUM(dbo.siteData.i_availtime) AS i_availtime, SUM(dbo.siteData.i_ringtime) AS i_ringtime, 
                         SUM(dbo.siteData.ringtime) AS ringtime, SUM(dbo.siteData.ringcalls) AS ringcalls, SUM(dbo.siteData.i_acdtime) AS i_acdtime, SUM(dbo.siteData.acdtime) AS acdtime, SUM(dbo.siteData.acdcalls) AS acdcalls, 
                         SUM(dbo.siteData.i_acwtime) AS i_acwtime, SUM(dbo.siteData.acwtime) AS acwtime, SUM(dbo.siteData.i_acwouttime) AS i_acwouttime, SUM(dbo.siteData.acwouttime) AS acwouttime, 
                         SUM(dbo.siteData.acwoutcalls) AS acwoutcalls, SUM(dbo.siteData.i_acwintime) AS i_acwintime, SUM(dbo.siteData.acwintime) AS acwintime, SUM(dbo.siteData.acwincalls) AS acwincalls, 
                         SUM(dbo.siteData.i_auxtime) AS i_auxtime, SUM(dbo.siteData.i_auxouttime) AS i_auxouttime, SUM(dbo.siteData.auxouttime) AS auxouttime, SUM(dbo.siteData.auxoutcalls) AS auxoutcalls, 
                         SUM(dbo.siteData.i_auxintime) AS i_auxintime, SUM(dbo.siteData.auxintime) AS auxintime, SUM(dbo.siteData.auxincalls) AS auxincalls, SUM(dbo.siteData.holdtime) AS holdtime, SUM(dbo.siteData.holdcalls) 
                         AS holdcalls, SUM(dbo.siteData.holdabncalls) AS holdabncalls, SUM(dbo.siteData.transferred) AS transferred, SUM(dbo.siteData.conference) AS conference, SUM(dbo.siteData.abncalls) AS abncalls, 
                         SUM(dbo.siteData.abntime) AS abntime, SUM(dbo.siteData.[Break]) AS [Break], SUM(dbo.siteData.Meeting) AS Meeting, SUM(dbo.siteData.Lunch) AS Lunch, SUM(dbo.siteData.Lead) AS Lead, 
                         SUM(dbo.siteData.Closed) AS Closed, SUM(dbo.siteData.DCTR) AS DCTR, SUM(dbo.siteData.Coach_Meeting) AS Coach_Meeting, SUM(dbo.siteData.Train) AS Train, SUM(dbo.siteData.Project) AS Project, 
                         SUM(dbo.siteData.Computer) AS Computer, SUM(dbo.siteData.Personal) AS Personal, SUM(dbo.siteData.[Union]) AS [Union], SUM(dbo.siteData.Outbound) AS Outbound, SUM(dbo.siteData.Mentoring) AS Mentoring,
                          SUM(dbo.siteData.Aux) AS Aux, SUM(dbo.siteData.EOS) AS EOS, SUM(dbo.siteData.Chat) AS Chat, SUM(dbo.siteData.PCBootup) AS PCBootup
FROM            dbo.siteData INNER JOIN
                         dbo.Emp_Grp_LOB AS egl1 ON dbo.siteData.DEPT_SK = egl1.EMP_GRP_NODE_SK INNER JOIN
                         dbo.Emp_Grp_LOB AS egl2 ON dbo.siteData.SITE_SK = egl2.EMP_GRP_NODE_SK
WHERE        (egl1.lobID IS NOT NULL)
GROUP BY dbo.siteData.row_date, dbo.siteData.interval, egl1.lobID, egl2.siteID

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
         Begin Table = "siteData"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "egl1"
            Begin Extent = 
               Top = 6
               Left = 264
               Bottom = 136
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "egl2"
            Begin Extent = 
               Top = 6
               Left = 513
               Bottom = 136
               Right = 724
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'siteLob';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'siteLob';

