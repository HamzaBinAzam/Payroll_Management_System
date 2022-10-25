/****** Script for SelectTopNRows command from SSMS  ******/

--Query to get the list of all Ex- Employees
SELECT 
       [Employee ID]
      --,[S#]
      ,[Employee Name]
      ,[Designation]
      ,CONVERT(date,[Joining Date]) as [Joining Date]
      ,Convert(date,[Exit Date]) as [Exit Date]
      ,[Service Duration]
      --,[Days]
      ,[Confirmation Status]
      ,[Employement type]
      ,CAST([Gross Salary] as Int) as [Gross Salary]
      ,[Phone Number] 
      ,[E-mail Address]
      --,[CNIC] as [CNIC Number]
      ,CONVERT(Date,[Date of Birth]) as [Date of Birth]
      --,[Postal Address]
      --,[Blood Group]
      --,[Marital Status]
      --,[Emergency Contact]
  FROM [Broadvisions].[dbo].[Employees_Record$]
  Where [Exit Date] is NOT NULL

  --Query to select Current Employees
  SELECT 
       [Employee ID]
      --,[S#]
      ,[Employee Name]
      ,[Designation]
      ,CONVERT(date,[Joining Date]) as [Joining Date]
      ,Convert(date,[Exit Date]) as [Exit Date]
      ,[Service Duration]
      --,[Days]
      ,[Confirmation Status]
      ,[Employement type]
      ,CAST([Gross Salary] as Int) as [Gross Salary]
      ,[Phone Number] 
      ,[E-mail Address]
      --,[CNIC] as [CNIC Number]
      ,CONVERT(Date,[Date of Birth]) as [Date of Birth]
      --,[Postal Address]
      --,[Blood Group]
      --,[Marital Status]
      --,[Emergency Contact]
      ,[Bank Account]
  FROM [Broadvisions].[dbo].[Employees_Record$]
  Where [Exit Date] is NULL


  --To get the LIST of ALL EMPLOYEES 
SELECT 
	  [Employee ID]
      --,[S#]
      ,[Employee Name]
      ,[Designation]
      ,CONVERT(date,[Joining Date]) as [Joining Date]
      ,Convert(date,[Exit Date]) as [Exit Date]
	  ,MONTH([Exit Date]) as [Exit Month]
	  ,YEAR([Exit Date]) as [Exit Year]
	  ,Month(GETDATE()) as [Current Month]
      ,[Service Duration]
      --,[Days]
      ,[Confirmation Status]
      ,[Employement type]
      ,CAST([Gross Salary] as Int) as [Gross Salary]
      ,[Phone Number] 
      ,[E-mail Address]
      --,[CNIC] as [CNIC Number]
      ,CONVERT(Date,[Date of Birth]) as [Date of Birth]
      --,[Postal Address]
      --,[Blood Group]
      --,[Marital Status]
      --,[Emergency Contact]
      ,[Bank Account]
      ,Case [Gender]
	  WHEN 'M' THEN 'MALE'
	  WHEN 'F' THEN 'FEMALE'
	  END as [Gender]
   FROM [Broadvisions].[dbo].[Employees_Record$]

