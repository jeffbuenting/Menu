#-----------------------------------------------------------
# Module GUIMenu.psm1
#
# contains functions to create and use GUI drop down menus
#-----------------------------------------------------------

#-----------------------------------------------------------
# Function New-MenuWindow
#
# Creates a Window
#-----------------------------------------------------------

Function New-MenuWindow {

	Param ( [Int]$Width,
			[Int]$Height )

	[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
	[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")  #loading the necessary .net libraries (using void to suppress output)

	$Form = New-Object System.Windows.Forms.Form    #creating the form (this will be the "primary" window)
	$Form.Size = New-Object System.Drawing.Size($Width,$Height)  #the size in px of the window length, height

	$Form.Add_Shown({$Form.Activate()})
	[void] $Form.ShowDialog()   #activating the form

}

#-----------------------------------------------------------

Export-ModuleMember -Function New-MenuWindow