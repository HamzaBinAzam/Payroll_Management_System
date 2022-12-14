/****** Script for SelectTopNRows command from SSMS  ******/

--Query to Analyze Attendance Record and Extract record for Current Payroll
SELECT 
      [Employee ID]
      ,[Code]
      ,[Name / Date] as [Employee Name]
	  ,CONVERT(date,[MONTH]) as [Payroll Date]
      ,Month([MONTH]) as [Month Number]
	  ,FORMAT([MONTH],'MMMM') as [Month Name]
	  ,YEAR([MONTH]) as Year
      --,[01]
      --,[02]
      --,[03]
      --,[04]
      --,[05]
      --,[06]
      --,[07]
      --,[08]
      --,[09]
      --,[10]
      --,[11]
      --,[12]
      --,[13]
      --,[14]
      --,[15]
      --,[16]
      --,[17]
      --,[18]
      --,[19]
      --,[20]
      --,[21]
      --,[22]
      --,[23]
      --,[24]
      --,[25]
      --,[26]
      --,[27]
      --,[28]
      --,[29]
      --,[30]
      --,[31]
      ,[WFH]
      ,[C/L]
      ,[S/L]
      ,[A/L]
      ,[HD]
      ,[ML]
      ,[L]
      ,[P/L]
      ,[W/P]
      ,[HDW]
      ,[N/A]
      ,[EL]
  FROM [Broadvisions].[dbo].[Attendance]