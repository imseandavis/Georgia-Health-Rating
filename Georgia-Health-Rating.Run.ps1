﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: 6d77efaa-2a43-4793-95b9-74e565249bdd
# Source File: C:\Documents\SAPIEN\PowerShell Studio\Projects\Georgia-Health-Rating\Georgia-Health-Rating.psproj
#------------------------------------------------------------------------
<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2017 v5.4.136
     Generated on:       11/7/2017 1:00 AM
     Generated by:       Andel
     Organization:       Farsight
    --------------------------------------------------------------------------------
    .DESCRIPTION
        Script generated by PowerShell Studio 2017
#>



#region Source: Startup.pss
#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
[void][Reflection.Assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][Reflection.Assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
#endregion Import Assemblies

#Define a Param block to use custom parameters in the project
#Param ($CustomParameter)

function Main {
<#
    .SYNOPSIS
        The Main function starts the project application.
    
    .PARAMETER Commandline
        $Commandline contains the complete argument string passed to the script packager executable.
    
    .NOTES
        Use this function to initialize your script and to call GUI forms.
		
    .NOTES
        To get the console output in the Packager (Forms Engine) use: 
		$ConsoleOutput (Type: System.Collections.ArrayList)
#>
	Param ([String]$Commandline)
		
	#--------------------------------------------------------------------------
	#TODO: Add initialization script here (Load modules and check requirements)
	
	
	#--------------------------------------------------------------------------
	
	if((Show-MainForm_psf) -eq 'OK')
	{
		
	}
	
	$script:ExitCode = 0 #Set the exit code for the Packager
}







#endregion Source: Startup.pss

#region Source: Globals.ps1
	#--------------------------------------------
	# Declare Global Variables and Functions here
	#--------------------------------------------
	
	
	#Sample function that provides the location of the script
	function Get-ScriptDirectory
	{
	<#
		.SYNOPSIS
			Get-ScriptDirectory returns the proper location of the script.
	
		.OUTPUTS
			System.String
		
		.NOTES
			Returns the correct path within a packaged executable.
	#>
		[OutputType([string])]
		param ()
		if ($null -ne $hostinvocation)
		{
			Split-Path $hostinvocation.MyCommand.path
		}
		else
		{
			Split-Path $script:MyInvocation.MyCommand.Path
		}
	}
	
	#Sample variable that provides the location of the script
	[string]$ScriptDirectory = Get-ScriptDirectory
	
	
	
#endregion Source: Globals.ps1

#region Source: MainForm.psf
function Show-MainForm_psf
{
	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Windows.Forms.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$GeorgiaHealthRatingForm = New-Object 'System.Windows.Forms.Form'
	$DebugConsole = New-Object 'System.Windows.Forms.RichTextBox'
	$combobox2 = New-Object 'System.Windows.Forms.ComboBox'
	$SearchGroup = New-Object 'System.Windows.Forms.GroupBox'
	$buttonSearch = New-Object 'System.Windows.Forms.Button'
	$BusinessNameTextBox = New-Object 'System.Windows.Forms.TextBox'
	$SearchByBusinessName = New-Object 'System.Windows.Forms.Label'
	$SearchByGradeButton = New-Object 'System.Windows.Forms.Button'
	$FoodGradeComboBox = New-Object 'System.Windows.Forms.ComboBox'
	$SearchByGradeLabel = New-Object 'System.Windows.Forms.Label'
	$groupbox1 = New-Object 'System.Windows.Forms.GroupBox'
	$FaxTextBox = New-Object 'System.Windows.Forms.TextBox'
	$TelephoneTextBox = New-Object 'System.Windows.Forms.TextBox'
	$AddressTextBox = New-Object 'System.Windows.Forms.TextBox'
	$NameTextBox = New-Object 'System.Windows.Forms.TextBox'
	$labelFax = New-Object 'System.Windows.Forms.Label'
	$labelTelephone = New-Object 'System.Windows.Forms.Label'
	$labelAddress = New-Object 'System.Windows.Forms.Label'
	$labelName = New-Object 'System.Windows.Forms.Label'
	$ScoreChart = New-Object 'System.Windows.Forms.DataVisualization.Charting.Chart'
	$CountyComboBox = New-Object 'System.Windows.Forms.ComboBox'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$GeorgiaHealthRatingForm_Load={
		#TODO: Initialize Form Controls here
		
	}
	
	#region Control Helper Functions
	function Update-Chart
	{
	<#
		.SYNOPSIS
			This functions helps you plot points on a chart
		
		.DESCRIPTION
			Use the function to plot points on a chart or add more charts to a chart control
		
		.PARAMETER ChartControl
			The Chart Control you when to add points to
		
		.PARAMETER XPoints
			Set the X Axis Points. These can be strings or numerical values.
		
		.PARAMETER YPoints
			Set the Y Axis Points. These can be strings or numerical values.
		
		.PARAMETER XTitle
			Set the Title for the X Axis.
		
		.PARAMETER YTitle
			Set the Title for the Y Axis.
		
		.PARAMETER Title
			Set the Title for the chart.
		
		.PARAMETER ChartType
			Set the Style of the chart. See System.Windows.Forms.DataVisualization.Charting.SeriesChartType Enum
		
		.PARAMETER SeriesIndex
			Set the settings of a particular Series and corresponding ChartArea
		
		.PARAMETER TitleIndex
			Set the settings of a particular Title
		
		.PARAMETER SeriesName
			Set the settings of a particular Series using its name and corresponding ChartArea.
			The Series will be created if not found.
			If SeriesIndex is set, it will replace the Series' name if the Series does not exist
		
		.PARAMETER Enable3D
			The chart will be rendered in 3D.
		
		.PARAMETER Disable3D
			The chart will be rendered in 2D.
		
		.PARAMETER AppendNew
			When this switch is used, a new ChartArea is added to Chart Control.
		
		.NOTES
			Additional information about the function.
		
		.LINK
			http://www.sapien.com/blog/2011/05/05/primalforms-2011-designing-charts-for-powershell/
	#>
		
		param
		(
			[Parameter(Mandatory = $true,
					   Position = 1)]
			[ValidateNotNull()]
			[System.Windows.Forms.DataVisualization.Charting.Chart]
			$ChartControl,
			[Parameter(Mandatory = $true,
					   Position = 2)]
			[ValidateNotNull()]
			$XPoints,
			[Parameter(Mandatory = $true,
					   Position = 3)]
			$YPoints,
			[Parameter(Mandatory = $false,
					   Position = 4)]
			[string]
			$XTitle,
			[Parameter(Mandatory = $false,
					   Position = 5)]
			[string]
			$YTitle,
			[Parameter(Mandatory = $false,
					   Position = 6)]
			[string]
			$Title,
			[Parameter(Mandatory = $false,
					   Position = 7)]
			[System.Windows.Forms.DataVisualization.Charting.SeriesChartType]
			$ChartType,
			[Parameter(Mandatory = $false,
					   Position = 8)]
			$SeriesIndex = '-1',
			[Parameter(Mandatory = $false,
					   Position = 9)]
			$TitleIndex = '0',
			[Parameter(Mandatory = $false)]
			[string]
			$SeriesName = $null,
			[switch]
			$Enable3D,
			[switch]
			$Disable3D,
			[switch]
			$AppendNew
		)
		
		$ChartAreaIndex = 0
		if ($AppendNew)
		{
			$name = "ChartArea " + ($ChartControl.ChartAreas.Count + 1).ToString();
			$ChartArea = $ChartControl.ChartAreas.Add($name)
			$ChartAreaIndex = $ChartControl.ChartAreas.Count - 1
			
			$name = "Series " + ($ChartControl.Series.Count + 1).ToString();
			$Series = $ChartControl.Series.Add($name)
			$SeriesIndex = $ChartControl.Series.Count - 1
			
			$Series.ChartArea = $ChartArea.Name
			
			if ($Title)
			{
				$name = "Title " + ($ChartControl.Titles.Count + 1).ToString();
				$TitleObj = $ChartControl.Titles.Add($Title)
				$TitleIndex = $ChartControl.Titles.Count - 1
				$TitleObj.DockedToChartArea = $ChartArea.Name
				$TitleObj.IsDockedInsideChartArea = $false
			}
		}
		else
		{
			if ($ChartControl.ChartAreas.Count -eq 0)
			{
				$name = "ChartArea " + ($ChartControl.ChartAreas.Count + 1).ToString();
				[void]$ChartControl.ChartAreas.Add($name)
				$ChartAreaIndex = $ChartControl.ChartAreas.Count - 1
			}
			
			if ($ChartControl.Series.Count -eq 0)
			{
				if (-not $SeriesName)
				{
					$SeriesName = "Series " + ($ChartControl.Series.Count + 1).ToString();
				}
				
				$Series = $ChartControl.Series.Add($SeriesName)
				$SeriesIndex = $ChartControl.Series.Count - 1
				$Series.ChartArea = $ChartControl.ChartAreas[$ChartAreaIndex].Name
			}
			elseif ($SeriesName)
			{
				$Series = $ChartControl.Series.FindByName($SeriesName)
				
				if ($null -eq $Series)
				{
					if (($SeriesIndex -gt -1) -and ($SeriesIndex -lt $ChartControl.Series.Count))
					{
						$Series = $ChartControl.Series[$SeriesIndex]
						$Series.Name = $SeriesName
					}
					else
					{
						$Series = $ChartControl.Series.Add($SeriesName)
						$SeriesIndex = $ChartControl.Series.Count - 1
					}
					
					$Series.ChartArea = $ChartControl.ChartAreas[$ChartAreaIndex].Name
				}
				else
				{
					$SeriesIndex = $ChartControl.Series.IndexOf($Series)
					$ChartAreaIndex = $ChartControl.ChartAreas.IndexOf($Series.ChartArea)
				}
			}
		}
		
		if (($SeriesIndex -lt 0) -or ($SeriesIndex -ge $ChartControl.Series.Count))
		{
			$SeriesIndex = 0
		}
		
		$Series = $ChartControl.Series[$SeriesIndex]
		$Series.Points.Clear()
		$ChartArea = $ChartControl.ChartAreas[$Series.ChartArea]
		
		if ($Enable3D)
		{
			$ChartArea.Area3DStyle.Enable3D = $true
		}
		elseif ($Disable3D)
		{
			$ChartArea.Area3DStyle.Enable3D = $false
		}
		
		if ($Title)
		{
			if ($ChartControl.Titles.Count -eq 0)
			{
				#$name = "Title " + ($ChartControl.Titles.Count + 1).ToString();
				$TitleObj = $ChartControl.Titles.Add($Title)
				$TitleIndex = $ChartControl.Titles.Count - 1
				$TitleObj.DockedToChartArea = $ChartArea.Name
				$TitleObj.IsDockedInsideChartArea = $false
			}
			
			$ChartControl.Titles[$TitleIndex].Text = $Title
		}
		
		if ($ChartType)
		{
			$Series.ChartType = $ChartType
		}
		
		if ($XTitle)
		{
			$ChartArea.AxisX.Title = $XTitle
		}
		
		if ($YTitle)
		{
			$ChartArea.AxisY.Title = $YTitle
		}
		
		if ($XPoints -isnot [Array] -or $XPoints -isnot [System.Collections.IEnumerable])
		{
			$array = New-Object System.Collections.ArrayList
			$array.Add($XPoints)
			$XPoints = $array
		}
		
		if ($YPoints -isnot [Array] -or $YPoints -isnot [System.Collections.IEnumerable])
		{
			$array = New-Object System.Collections.ArrayList
			$array.Add($YPoints)
			$YPoints = $array
		}
		
		$Series.Points.DataBindXY($XPoints, $YPoints)
	}
	
	
	function Clear-Chart
	{
	<#
		.SYNOPSIS
			This function clears the contents of the chart
	
		.DESCRIPTION
			Use the function to remove contents from the chart control
	
		.PARAMETER  ChartControl
			The Chart Control to clear
	
		.PARAMETER  LeaveSingleChart
			Leaves the first chart and removes all others from the control
		
		.LINK
			http://www.sapien.com/blog/2011/05/05/primalforms-2011-designing-charts-for-powershell/
	#>
		Param (	
		[ValidateNotNull()]
		[Parameter(Position=1,Mandatory=$true)]
	  	[System.Windows.Forms.DataVisualization.Charting.Chart]$ChartControl
		,
		[Parameter(Position=2, Mandatory=$false)]
		[Switch]$LeaveSingleChart
		)
		
		$count = 0	
		if($LeaveSingleChart)
		{
			$count = 1
		}
		
		while($ChartControl.Series.Count -gt $count)
		{
			$ChartControl.Series.RemoveAt($ChartControl.Series.Count - 1)
		}
		
		while($ChartControl.ChartAreas.Count -gt $count)
		{
			$ChartControl.ChartAreas.RemoveAt($ChartControl.ChartAreas.Count - 1)
		}
		
		while($ChartControl.Titles.Count -gt $count)
		{
			$ChartControl.Titles.RemoveAt($ChartControl.Titles.Count - 1)
		}
		
		if($ChartControl.Series.Count -gt 0)
		{
			$ChartControl.Series[0].Points.Clear()
		}
	}
	
	function Update-ComboBox
	{
	<#
		.SYNOPSIS
			This functions helps you load items into a ComboBox.
		
		.DESCRIPTION
			Use this function to dynamically load items into the ComboBox control.
		
		.PARAMETER ComboBox
			The ComboBox control you want to add items to.
		
		.PARAMETER Items
			The object or objects you wish to load into the ComboBox's Items collection.
		
		.PARAMETER DisplayMember
			Indicates the property to display for the items in this control.
		
		.PARAMETER Append
			Adds the item(s) to the ComboBox without clearing the Items collection.
		
		.EXAMPLE
			Update-ComboBox $combobox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Update-ComboBox $combobox1 "Red" -Append
			Update-ComboBox $combobox1 "White" -Append
			Update-ComboBox $combobox1 "Blue" -Append
		
		.EXAMPLE
			Update-ComboBox $combobox1 (Get-Process) "ProcessName"
		
		.NOTES
			Additional information about the function.
	#>
		
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ComboBox]
			$ComboBox,
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			$Items,
			[Parameter(Mandatory = $false)]
			[string]
			$DisplayMember,
			[switch]
			$Append
		)
		
		if (-not $Append)
		{
			$ComboBox.Items.Clear()
		}
		
		if ($Items -is [Object[]])
		{
			$ComboBox.Items.AddRange($Items)
		}
		elseif ($Items -is [System.Collections.IEnumerable])
		{
			$ComboBox.BeginUpdate()
			foreach ($obj in $Items)
			{
				$ComboBox.Items.Add($obj)
			}
			$ComboBox.EndUpdate()
		}
		else
		{
			$ComboBox.Items.Add($Items)
		}
		
		$ComboBox.DisplayMember = $DisplayMember
	}
	#endregion
	
	$CountyComboBox_SelectedIndexChanged={
		
		#Lookup County And Return The County Health Department Contact Info
		$ContactInfo = Invoke-WebRequest -Method GET -URI "http://ga.healthinspections.us/georgia/search.cfm?county=$($CountyComboBox.Text)"
		
		$ContactInfo
		#Parse The County Health Department Contact Info
		If ($($ContactInfo.StatusCode) -eq 200)
		{
			#Regex Hack To Get The Right Data Back
			$HealthDepartmentContactInfo = (((($ContactInfo.AllElements | Where Class -eq 'body' | Select -First 1).Outertext) -Split "office:" | Select -Skip 1).Trim().TrimEnd('"')).Split("`n")
		}
	
		#Update Health Department Info Fields
		$NameTextBox.Text = $HealthDepartmentContactInfo[0]
		$AddressTextBox.Text = $HealthDepartmentContactInfo[1].ToString()
		$TelephoneTextBox.Text = $HealthDepartmentContactInfo[2].ToString().Split(':')[1].Trim()
		$FaxTextBox.Text = $HealthDepartmentContactInfo[3].ToString().Split(':')[1].Trim()
		
	}
	
	$SearchByGradeButton_Click={
		
		#Lookup All Companies By Food Grade
		$FoodGradeMasterList=@()
		$FoodGradeResults = Invoke-WebRequest -Method GET -URI "http://ga.healthinspections.us/georgia/search.cfm?start=1&f=s&county=$($CountyComboBox.Text)&InspectionType=Food&GradeLetter=$($FoodGradeComboBox.Text)"
		$FoodGradeSearchResults1 = ($FoodGradeResults.ParsedHTML.getElementsByTagName('span') | Select -Skip 2 -First 1).innerText.Split("`n")
		$(($FoodGradeResults.ParsedHTML.getElementsByTagName('span') | Select -Skip 2 -First 1).innerText) | Out-File C:\tmp\test2.txt
		$FoodGradeSearchResults = Get-Content C:\tmp\test2.txt
		
		#Split The Results Into Seperate Objects
		$FoodGradeMasterList = @()
		$BlankLine = $false
		$tline = ''
		
		Foreach ($LocationResult in $FoodGradeSearchResults1)
		{
			if ($LocationResult -eq '' -and $BlankLine -ne '')
			{
				$FoodGradeMasterList += $tline
				$tline = $null
			}
			else
			{
				$tline = $tline + "`n" + $LocationResult
			}
			$BlankLine = $LocationResult
			
			$Scores = ""
			$ObjectLength = $($tline.Trim().Split("`n")).Length
			$FoodGradeTempRecord = New-Object -TypeName PSObject
			$FoodGradeTempRecord | Add-Member -MemberType NoteProperty -Name BusinessName -Value $($tline.Trim().Split("`n"))[0]
			$FoodGradeTempRecord | Add-Member -MemberType NoteProperty -Name BusinessAddress -Value $($tline.Trim().Split("`n"))[1]
			foreach ($Item in $(($tline.Trim().Split("`n"))[3 .. $($ObjectLength)]))
			{
				$Scores += $Item.Split(":")[1].Split(',')[0].Trim() + ","
			}
			$Scores = $Scores.TrimEnd(',')
			$FoodGradeTempRecord | Add-Member -MemberType NoteProperty -Name FoodScores -Value $Scores
		}
		#$FoodGradeMasterList += $tline
		
		#$DebugConsole.Text += $tline
		
		
		$DebugConsole.Text += $FoodGradeTempRecord
		
		#$FoodGradeMasterList += $FoodGradeTempRecord
		#$DebugConsole.Text += $FoodGradeMasterList
		
		#Populate The Combo Box With Businesses
		#Foreach ($Line in $FoodGradeSearchResults)
		#{
		#	$DebugConsole.Text += $Line
		#	$FoodGradeTempRecord = New-Object -TypeName PSObject
		#	$FoodGradeTempRecord | Add-Member -MemberType NoteProperty -Name BusinessName -Value Line 
		#	
		#	$FoodGradeMasterList += $FoodGradeTempRecord
		#}
	
		#Count How Manay Pages There Are
		
		#Loop Thorugh And Build Master Result Array
	}
	
	$buttonSearch_Click={
		#TODO: Place custom script here
		
	}
		# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$GeorgiaHealthRatingForm.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:MainForm_DebugConsole = $DebugConsole.Text
		$script:MainForm_combobox2 = $combobox2.Text
		$script:MainForm_combobox2_SelectedItem = $combobox2.SelectedItem
		$script:MainForm_BusinessNameTextBox = $BusinessNameTextBox.Text
		$script:MainForm_FoodGradeComboBox = $FoodGradeComboBox.Text
		$script:MainForm_FoodGradeComboBox_SelectedItem = $FoodGradeComboBox.SelectedItem
		$script:MainForm_FaxTextBox = $FaxTextBox.Text
		$script:MainForm_TelephoneTextBox = $TelephoneTextBox.Text
		$script:MainForm_AddressTextBox = $AddressTextBox.Text
		$script:MainForm_NameTextBox = $NameTextBox.Text
		$script:MainForm_CountyComboBox = $CountyComboBox.Text
		$script:MainForm_CountyComboBox_SelectedItem = $CountyComboBox.SelectedItem
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonSearch.remove_Click($buttonSearch_Click)
			$SearchByGradeButton.remove_Click($SearchByGradeButton_Click)
			$CountyComboBox.remove_SelectedIndexChanged($CountyComboBox_SelectedIndexChanged)
			$GeorgiaHealthRatingForm.remove_Load($GeorgiaHealthRatingForm_Load)
			$GeorgiaHealthRatingForm.remove_Load($Form_StateCorrection_Load)
			$GeorgiaHealthRatingForm.remove_Closing($Form_StoreValues_Closing)
			$GeorgiaHealthRatingForm.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$GeorgiaHealthRatingForm.SuspendLayout()
	$ScoreChart.BeginInit()
	$groupbox1.SuspendLayout()
	$SearchGroup.SuspendLayout()
	#
	# GeorgiaHealthRatingForm
	#
	$GeorgiaHealthRatingForm.Controls.Add($DebugConsole)
	$GeorgiaHealthRatingForm.Controls.Add($combobox2)
	$GeorgiaHealthRatingForm.Controls.Add($SearchGroup)
	$GeorgiaHealthRatingForm.Controls.Add($groupbox1)
	$GeorgiaHealthRatingForm.Controls.Add($ScoreChart)
	$GeorgiaHealthRatingForm.Controls.Add($CountyComboBox)
	$GeorgiaHealthRatingForm.AutoScaleDimensions = '6, 13'
	$GeorgiaHealthRatingForm.AutoScaleMode = 'Font'
	$GeorgiaHealthRatingForm.ClientSize = '853, 520'
	$GeorgiaHealthRatingForm.Name = 'GeorgiaHealthRatingForm'
	$GeorgiaHealthRatingForm.Text = 'Georgia Health Rating'
	$GeorgiaHealthRatingForm.add_Load($GeorgiaHealthRatingForm_Load)
	#
	# DebugConsole
	#
	$DebugConsole.Location = '12, 309'
	$DebugConsole.Name = 'DebugConsole'
	$DebugConsole.Size = '829, 199'
	$DebugConsole.TabIndex = 5
	$DebugConsole.Text = ''
	#
	# combobox2
	#
	$combobox2.Enabled = $False
	$combobox2.FormattingEnabled = $True
	$combobox2.Location = '450, 12'
	$combobox2.Name = 'combobox2'
	$combobox2.Size = '391, 21'
	$combobox2.TabIndex = 4
	#
	# SearchGroup
	#
	$SearchGroup.Controls.Add($buttonSearch)
	$SearchGroup.Controls.Add($BusinessNameTextBox)
	$SearchGroup.Controls.Add($SearchByBusinessName)
	$SearchGroup.Controls.Add($SearchByGradeButton)
	$SearchGroup.Controls.Add($FoodGradeComboBox)
	$SearchGroup.Controls.Add($SearchByGradeLabel)
	$SearchGroup.Location = '12, 177'
	$SearchGroup.Name = 'SearchGroup'
	$SearchGroup.Size = '412, 125'
	$SearchGroup.TabIndex = 3
	$SearchGroup.TabStop = $False
	$SearchGroup.Text = 'Search'
	#
	# buttonSearch
	#
	$buttonSearch.Location = '342, 44'
	$buttonSearch.Name = 'buttonSearch'
	$buttonSearch.Size = '64, 20'
	$buttonSearch.TabIndex = 5
	$buttonSearch.Text = 'Search'
	$buttonSearch.UseVisualStyleBackColor = $True
	$buttonSearch.add_Click($buttonSearch_Click)
	#
	# BusinessNameTextBox
	#
	$BusinessNameTextBox.Location = '145, 44'
	$BusinessNameTextBox.Name = 'BusinessNameTextBox'
	$BusinessNameTextBox.Size = '192, 20'
	$BusinessNameTextBox.TabIndex = 4
	#
	# SearchByBusinessName
	#
	$SearchByBusinessName.AutoSize = $True
	$SearchByBusinessName.Location = '7, 47'
	$SearchByBusinessName.Name = 'SearchByBusinessName'
	$SearchByBusinessName.Size = '135, 13'
	$SearchByBusinessName.TabIndex = 3
	$SearchByBusinessName.Text = 'Search By Business Name:'
	#
	# SearchByGradeButton
	#
	$SearchByGradeButton.Location = '342, 17'
	$SearchByGradeButton.Name = 'SearchByGradeButton'
	$SearchByGradeButton.Size = '64, 23'
	$SearchByGradeButton.TabIndex = 2
	$SearchByGradeButton.Text = 'Search'
	$SearchByGradeButton.UseVisualStyleBackColor = $True
	$SearchByGradeButton.add_Click($SearchByGradeButton_Click)
	#
	# FoodGradeComboBox
	#
	$FoodGradeComboBox.FormattingEnabled = $True
	[void]$FoodGradeComboBox.Items.Add('All')
	[void]$FoodGradeComboBox.Items.Add('A (90-100)')
	[void]$FoodGradeComboBox.Items.Add('B (80-89)')
	[void]$FoodGradeComboBox.Items.Add('C (70-79)')
	[void]$FoodGradeComboBox.Items.Add('U (69 and Lower)')
	$FoodGradeComboBox.Location = '145, 17'
	$FoodGradeComboBox.Name = 'FoodGradeComboBox'
	$FoodGradeComboBox.Size = '192, 21'
	$FoodGradeComboBox.TabIndex = 1
	#
	# SearchByGradeLabel
	#
	$SearchByGradeLabel.AutoSize = $True
	$SearchByGradeLabel.Location = '50, 21'
	$SearchByGradeLabel.Name = 'SearchByGradeLabel'
	$SearchByGradeLabel.Size = '94, 13'
	$SearchByGradeLabel.TabIndex = 0
	$SearchByGradeLabel.Text = 'Search By Grade: '
	#
	# groupbox1
	#
	$groupbox1.Controls.Add($FaxTextBox)
	$groupbox1.Controls.Add($TelephoneTextBox)
	$groupbox1.Controls.Add($AddressTextBox)
	$groupbox1.Controls.Add($NameTextBox)
	$groupbox1.Controls.Add($labelFax)
	$groupbox1.Controls.Add($labelTelephone)
	$groupbox1.Controls.Add($labelAddress)
	$groupbox1.Controls.Add($labelName)
	$groupbox1.Location = '12, 39'
	$groupbox1.Name = 'groupbox1'
	$groupbox1.Size = '412, 131'
	$groupbox1.TabIndex = 2
	$groupbox1.TabStop = $False
	$groupbox1.Text = 'Health Department Contact Info'
	#
	# FaxTextBox
	#
	$FaxTextBox.Enabled = $False
	$FaxTextBox.Location = '74, 98'
	$FaxTextBox.Name = 'FaxTextBox'
	$FaxTextBox.Size = '332, 20'
	$FaxTextBox.TabIndex = 6
	#
	# TelephoneTextBox
	#
	$TelephoneTextBox.Enabled = $False
	$TelephoneTextBox.Location = '74, 72'
	$TelephoneTextBox.Name = 'TelephoneTextBox'
	$TelephoneTextBox.Size = '332, 20'
	$TelephoneTextBox.TabIndex = 5
	#
	# AddressTextBox
	#
	$AddressTextBox.Enabled = $False
	$AddressTextBox.Location = '74, 46'
	$AddressTextBox.Name = 'AddressTextBox'
	$AddressTextBox.Size = '332, 20'
	$AddressTextBox.TabIndex = 4
	#
	# NameTextBox
	#
	$NameTextBox.Enabled = $False
	$NameTextBox.Location = '74, 20'
	$NameTextBox.Name = 'NameTextBox'
	$NameTextBox.Size = '332, 20'
	$NameTextBox.TabIndex = 0
	#
	# labelFax
	#
	$labelFax.AutoSize = $True
	$labelFax.Location = '41, 101'
	$labelFax.Name = 'labelFax'
	$labelFax.Size = '27, 13'
	$labelFax.TabIndex = 3
	$labelFax.Text = 'Fax:'
	#
	# labelTelephone
	#
	$labelTelephone.AutoSize = $True
	$labelTelephone.Location = '7, 75'
	$labelTelephone.Name = 'labelTelephone'
	$labelTelephone.Size = '61, 13'
	$labelTelephone.TabIndex = 2
	$labelTelephone.Text = 'Telephone:'
	#
	# labelAddress
	#
	$labelAddress.AutoSize = $True
	$labelAddress.Location = '20, 49'
	$labelAddress.Name = 'labelAddress'
	$labelAddress.Size = '48, 13'
	$labelAddress.TabIndex = 1
	$labelAddress.Text = 'Address:'
	#
	# labelName
	#
	$labelName.AutoSize = $True
	$labelName.Location = '30, 23'
	$labelName.Name = 'labelName'
	$labelName.Size = '38, 13'
	$labelName.TabIndex = 0
	$labelName.Text = 'Name:'
	#
	# ScoreChart
	#
	$System_Windows_Forms_DataVisualization_Charting_ChartArea_1 = New-Object 'System.Windows.Forms.DataVisualization.Charting.ChartArea'
	$System_Windows_Forms_DataVisualization_Charting_ChartArea_1.AxisY.Maximum = 100
	$System_Windows_Forms_DataVisualization_Charting_ChartArea_1.AxisY.Minimum = 70
	$System_Windows_Forms_DataVisualization_Charting_ChartArea_1.Name = 'FoodScore'
	[void]$ScoreChart.ChartAreas.Add($System_Windows_Forms_DataVisualization_Charting_ChartArea_1)
	$ScoreChart.Location = '450, 39'
	$ScoreChart.Name = 'ScoreChart'
	$System_Windows_Forms_DataVisualization_Charting_Series_2 = New-Object 'System.Windows.Forms.DataVisualization.Charting.Series'
	$System_Windows_Forms_DataVisualization_Charting_Series_2.ChartArea = 'FoodScore'
	$System_Windows_Forms_DataVisualization_Charting_Series_2.ChartType = 'Spline'
	$System_Windows_Forms_DataVisualization_Charting_Series_2.Name = 'Scores'
	$System_Windows_Forms_DataVisualization_Charting_DataPoint_3 = New-Object 'System.Windows.Forms.DataVisualization.Charting.DataPoint' (0, 88)
	[void]$System_Windows_Forms_DataVisualization_Charting_Series_2.Points.Add($System_Windows_Forms_DataVisualization_Charting_DataPoint_3)
	$System_Windows_Forms_DataVisualization_Charting_DataPoint_4 = New-Object 'System.Windows.Forms.DataVisualization.Charting.DataPoint' (0, 93)
	[void]$System_Windows_Forms_DataVisualization_Charting_Series_2.Points.Add($System_Windows_Forms_DataVisualization_Charting_DataPoint_4)
	$System_Windows_Forms_DataVisualization_Charting_DataPoint_5 = New-Object 'System.Windows.Forms.DataVisualization.Charting.DataPoint' (0, 83)
	[void]$System_Windows_Forms_DataVisualization_Charting_Series_2.Points.Add($System_Windows_Forms_DataVisualization_Charting_DataPoint_5)
	$System_Windows_Forms_DataVisualization_Charting_DataPoint_6 = New-Object 'System.Windows.Forms.DataVisualization.Charting.DataPoint' (0, 96)
	[void]$System_Windows_Forms_DataVisualization_Charting_Series_2.Points.Add($System_Windows_Forms_DataVisualization_Charting_DataPoint_6)
	$System_Windows_Forms_DataVisualization_Charting_DataPoint_7 = New-Object 'System.Windows.Forms.DataVisualization.Charting.DataPoint' (0, 94)
	[void]$System_Windows_Forms_DataVisualization_Charting_Series_2.Points.Add($System_Windows_Forms_DataVisualization_Charting_DataPoint_7)
	[void]$ScoreChart.Series.Add($System_Windows_Forms_DataVisualization_Charting_Series_2)
	$ScoreChart.Size = '391, 259'
	$ScoreChart.TabIndex = 1
	$ScoreChart.Text = 'ScoreChart'
	$ScoreChart.Visible = $False
	#
	# CountyComboBox
	#
	$CountyComboBox.FormattingEnabled = $True
	[void]$CountyComboBox.Items.Add('Appling')
	[void]$CountyComboBox.Items.Add('Atkinson')
	[void]$CountyComboBox.Items.Add('Bacon')
	[void]$CountyComboBox.Items.Add('Baker')
	[void]$CountyComboBox.Items.Add('Baldwin')
	[void]$CountyComboBox.Items.Add('Banks')
	[void]$CountyComboBox.Items.Add('Barrow*')
	[void]$CountyComboBox.Items.Add('Bartow')
	[void]$CountyComboBox.Items.Add('Ben Hill')
	[void]$CountyComboBox.Items.Add('Berrien')
	[void]$CountyComboBox.Items.Add('Bibb')
	[void]$CountyComboBox.Items.Add('Bleckley')
	[void]$CountyComboBox.Items.Add('Brantley')
	[void]$CountyComboBox.Items.Add('Brooks')
	[void]$CountyComboBox.Items.Add('Bryan')
	[void]$CountyComboBox.Items.Add('Bulloch')
	[void]$CountyComboBox.Items.Add('Burke')
	[void]$CountyComboBox.Items.Add('Butts')
	[void]$CountyComboBox.Items.Add('Calhoun')
	[void]$CountyComboBox.Items.Add('Camden')
	[void]$CountyComboBox.Items.Add('Candler')
	[void]$CountyComboBox.Items.Add('Carroll')
	[void]$CountyComboBox.Items.Add('Catoosa')
	[void]$CountyComboBox.Items.Add('Charlton')
	[void]$CountyComboBox.Items.Add('Chatham')
	[void]$CountyComboBox.Items.Add('Chattahoochee')
	[void]$CountyComboBox.Items.Add('Chattooga')
	[void]$CountyComboBox.Items.Add('Cherokee')
	[void]$CountyComboBox.Items.Add('Clarke*')
	[void]$CountyComboBox.Items.Add('Clay')
	[void]$CountyComboBox.Items.Add('Clayton')
	[void]$CountyComboBox.Items.Add('Clinch')
	[void]$CountyComboBox.Items.Add('Cobb')
	[void]$CountyComboBox.Items.Add('Coffee')
	[void]$CountyComboBox.Items.Add('Colquitt')
	[void]$CountyComboBox.Items.Add('Columbia')
	[void]$CountyComboBox.Items.Add('Cook')
	[void]$CountyComboBox.Items.Add('Coweta')
	[void]$CountyComboBox.Items.Add('Crawford')
	[void]$CountyComboBox.Items.Add('Crisp')
	[void]$CountyComboBox.Items.Add(' 	Dade')
	[void]$CountyComboBox.Items.Add('Dawson')
	[void]$CountyComboBox.Items.Add('Decatur')
	[void]$CountyComboBox.Items.Add('DeKalb*')
	[void]$CountyComboBox.Items.Add('Dodge')
	[void]$CountyComboBox.Items.Add('Dooly')
	[void]$CountyComboBox.Items.Add('Dougherty')
	[void]$CountyComboBox.Items.Add('Douglas')
	[void]$CountyComboBox.Items.Add('Early')
	[void]$CountyComboBox.Items.Add('Echols')
	[void]$CountyComboBox.Items.Add('Effingham')
	[void]$CountyComboBox.Items.Add('Elbert*')
	[void]$CountyComboBox.Items.Add('Emanuel')
	[void]$CountyComboBox.Items.Add('Evans')
	[void]$CountyComboBox.Items.Add('Fannin')
	[void]$CountyComboBox.Items.Add('Fayette')
	[void]$CountyComboBox.Items.Add('Floyd')
	[void]$CountyComboBox.Items.Add('Forsyth')
	[void]$CountyComboBox.Items.Add('Franklin')
	[void]$CountyComboBox.Items.Add('Fulton')
	[void]$CountyComboBox.Items.Add('Gilmer')
	[void]$CountyComboBox.Items.Add('Glascock')
	[void]$CountyComboBox.Items.Add('Glynn')
	[void]$CountyComboBox.Items.Add('Gordon')
	[void]$CountyComboBox.Items.Add('Grady')
	[void]$CountyComboBox.Items.Add('Greene*')
	[void]$CountyComboBox.Items.Add('Gwinnett*')
	[void]$CountyComboBox.Items.Add('Habersham')
	[void]$CountyComboBox.Items.Add('Hall')
	[void]$CountyComboBox.Items.Add('Hancock')
	[void]$CountyComboBox.Items.Add('Haralson')
	[void]$CountyComboBox.Items.Add('Harris*')
	[void]$CountyComboBox.Items.Add('Hart')
	[void]$CountyComboBox.Items.Add('Heard')
	[void]$CountyComboBox.Items.Add('Henry')
	[void]$CountyComboBox.Items.Add('Houston')
	[void]$CountyComboBox.Items.Add('Irwin')
	[void]$CountyComboBox.Items.Add('Jackson*')
	[void]$CountyComboBox.Items.Add('Jasper')
	[void]$CountyComboBox.Items.Add('Jeff Davis')
	[void]$CountyComboBox.Items.Add(' 	Jefferson')
	[void]$CountyComboBox.Items.Add('Jenkins')
	[void]$CountyComboBox.Items.Add('Johnson')
	[void]$CountyComboBox.Items.Add('Jones')
	[void]$CountyComboBox.Items.Add('Lamar')
	[void]$CountyComboBox.Items.Add('Lanier')
	[void]$CountyComboBox.Items.Add('Laurens')
	[void]$CountyComboBox.Items.Add('Lee')
	[void]$CountyComboBox.Items.Add('Liberty')
	[void]$CountyComboBox.Items.Add('Lincoln')
	[void]$CountyComboBox.Items.Add('Long')
	[void]$CountyComboBox.Items.Add('Lowndes')
	[void]$CountyComboBox.Items.Add('Lumpkin')
	[void]$CountyComboBox.Items.Add('Macon')
	[void]$CountyComboBox.Items.Add('Madison*')
	[void]$CountyComboBox.Items.Add('Marion')
	[void]$CountyComboBox.Items.Add('McDuffie')
	[void]$CountyComboBox.Items.Add('McIntosh')
	[void]$CountyComboBox.Items.Add('Meriwether')
	[void]$CountyComboBox.Items.Add('Miller')
	[void]$CountyComboBox.Items.Add('Mitchell')
	[void]$CountyComboBox.Items.Add('Monroe')
	[void]$CountyComboBox.Items.Add('Montgomery')
	[void]$CountyComboBox.Items.Add('Morgan*')
	[void]$CountyComboBox.Items.Add('Murray')
	[void]$CountyComboBox.Items.Add('Muscogee')
	[void]$CountyComboBox.Items.Add('Newton')
	[void]$CountyComboBox.Items.Add('Oconee*')
	[void]$CountyComboBox.Items.Add('Oglethorpe*')
	[void]$CountyComboBox.Items.Add('Paulding')
	[void]$CountyComboBox.Items.Add('Peach')
	[void]$CountyComboBox.Items.Add('Pickens')
	[void]$CountyComboBox.Items.Add('Pierce')
	[void]$CountyComboBox.Items.Add('Pike')
	[void]$CountyComboBox.Items.Add('Polk')
	[void]$CountyComboBox.Items.Add('Pulaski')
	[void]$CountyComboBox.Items.Add('Putnam')
	[void]$CountyComboBox.Items.Add('Quitman')
	[void]$CountyComboBox.Items.Add('Rabun')
	[void]$CountyComboBox.Items.Add('Randolph')
	[void]$CountyComboBox.Items.Add('Richmond')
	[void]$CountyComboBox.Items.Add('Rockdale')
	[void]$CountyComboBox.Items.Add('Schley')
	[void]$CountyComboBox.Items.Add('Screven')
	[void]$CountyComboBox.Items.Add('Seminole')
	[void]$CountyComboBox.Items.Add('Spalding')
	[void]$CountyComboBox.Items.Add('Stephens')
	[void]$CountyComboBox.Items.Add('Stewart')
	[void]$CountyComboBox.Items.Add('Sumter')
	[void]$CountyComboBox.Items.Add('Talbot')
	[void]$CountyComboBox.Items.Add('Taliaferro')
	[void]$CountyComboBox.Items.Add('Tattnall')
	[void]$CountyComboBox.Items.Add('Taylor')
	[void]$CountyComboBox.Items.Add('Telfair')
	[void]$CountyComboBox.Items.Add('Terrell')
	[void]$CountyComboBox.Items.Add('Thomas')
	[void]$CountyComboBox.Items.Add('Tift')
	[void]$CountyComboBox.Items.Add('Toombs')
	[void]$CountyComboBox.Items.Add('Towns')
	[void]$CountyComboBox.Items.Add('Treutlen')
	[void]$CountyComboBox.Items.Add('Troup')
	[void]$CountyComboBox.Items.Add('Turner')
	[void]$CountyComboBox.Items.Add('Twiggs')
	[void]$CountyComboBox.Items.Add('Union')
	[void]$CountyComboBox.Items.Add('Upson')
	[void]$CountyComboBox.Items.Add('Walker')
	[void]$CountyComboBox.Items.Add('Walton*')
	[void]$CountyComboBox.Items.Add('Ware')
	[void]$CountyComboBox.Items.Add('Warren')
	[void]$CountyComboBox.Items.Add('Washington')
	[void]$CountyComboBox.Items.Add('Wayne')
	[void]$CountyComboBox.Items.Add('Webster')
	[void]$CountyComboBox.Items.Add('Wheeler')
	[void]$CountyComboBox.Items.Add('White')
	[void]$CountyComboBox.Items.Add('Whitfield')
	[void]$CountyComboBox.Items.Add('Wilcox')
	[void]$CountyComboBox.Items.Add('Wilkes')
	[void]$CountyComboBox.Items.Add('Wilkinson')
	[void]$CountyComboBox.Items.Add('Worth')
	$CountyComboBox.Location = '12, 12'
	$CountyComboBox.Name = 'CountyComboBox'
	$CountyComboBox.Size = '412, 21'
	$CountyComboBox.TabIndex = 0
	$CountyComboBox.Text = 'Pick A County To Search...'
	$CountyComboBox.add_SelectedIndexChanged($CountyComboBox_SelectedIndexChanged)
	$SearchGroup.ResumeLayout()
	$groupbox1.ResumeLayout()
	$ScoreChart.EndInit()
	$GeorgiaHealthRatingForm.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $GeorgiaHealthRatingForm.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$GeorgiaHealthRatingForm.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$GeorgiaHealthRatingForm.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$GeorgiaHealthRatingForm.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $GeorgiaHealthRatingForm.ShowDialog()

}
#endregion Source: MainForm.psf

#Start the application
Main ($CommandLine)
