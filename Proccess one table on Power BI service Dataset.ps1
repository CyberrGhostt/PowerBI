param(
    $Server,
    $DatabaseName,
    $TableName,
    $RefreshType 
)

$password = "Password0000" | ConvertTo-SecureString -asPlainText -Force
$username = "ogabek@cyberorgan.onmicrosoft.com"
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Invoke-ProcessTable -Server $Server -DatabaseName $DatabaseName -TableName $TableName -RefreshType $RefreshType -Credential $credential

#-Server "powerbi://api.powerbi.com/v1.0/myorg/Analytics"
#-DatabaseName "test_xmla_refresh_test"
#-TableName "abc"
#-RefreshType "Full"

# D:\PowerBI\RefreshNonParallelPBIService\PowerShell\process_tbl.ps1 -Server "powerbi://api.powerbi.com/v1.0/myorg/Analytics" -DatabaseName "test_xmla_refresh_test" -TableName "abc" -RefreshType "Full"


Write-Output $DatabaseName