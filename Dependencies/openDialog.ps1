################# Don't remove this lines ##########################

. ".\Dependencies\params.ps1"
# . ".\Dependencies\globalVariables.ps1"

Add-Type -AssemblyName System.Windows.Forms
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$openFileDialog.Title = "Choose a file"
$openFileDialog.Filter = "(*.csv)|*.csv"
$result = $openFileDialog.ShowDialog()
$actualDate = (Get-Date).ToString("MM-dd-yy")


################# Don't remove this lines ##########################
