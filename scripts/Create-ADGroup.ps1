Param(
    [Parameter(Mandatory=$true)][string]$GroupName,
    [Parameter(Mandatory=$false)][ValidateSet("Global", "DomainLocal", "Universal")][string]$GroupScope = "Global"
)

Import-Module ActiveDirectory

New-ADGroup `
    -Name $GroupName `
    -GroupScope $GroupScope `
    -GroupCategory Security

Write-Host "Group $GroupName created successfully."
