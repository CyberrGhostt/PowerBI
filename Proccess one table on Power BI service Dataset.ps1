param(
    $Server,
    $DatabaseName,
    $TableName,
    $RefreshType 
)

$password = "YourPassword" | ConvertTo-SecureString -asPlainText -Force
$username = "user@freedomain.onmicrosoft.com" # pbi account
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Invoke-ProcessTable -Server $Server -DatabaseName $DatabaseName -TableName $TableName -RefreshType $RefreshType -Credential $credential

#-Server "powerbi://api.powerbi.com/v1.0/myorg/WorkspaceName"
#-DatabaseName "PBIDatasetName"
#-TableName "TableName"
#-RefreshType "Full"

Write-Output $DatabaseName
