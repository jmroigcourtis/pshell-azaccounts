############################## Imported modules ##############################
## DON'T REMOVE THESE LINES OR THE SCRIPT WON'T WORK ##

. ".\Dependencies\openDialog.ps1" ## Must be on top in order the open the box to select the file
. ".\Dependencies\messages.ps1"
. ".\Dependencies\globalVariables.ps1" 

## DON'T REMOVE THESE LINES OR THE SCRIPT WON'T WORK ##
############################## Imported modules ##############################



$inputFile = if ($result -eq [System.Windows.Forms.DialogResult]::OK) { $openFileDialog.FileName } else { $errorMessage }
$getAccountType = Get-Content $inputFile | Where-Object {$_.Contains($acc)} | Out-File -FilePath $accountReportFile


if ($accountType.Contains($acc)) { 
    return $getAccountType 
} else {
    Write-Error $accTypeErrorMsg
}
