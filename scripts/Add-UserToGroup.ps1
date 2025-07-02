Param(
    [Parameter(Mandatory=$true)][string]$UserName,
    [Parameter(Mandatory=$true)][string]$GroupName
)

Import-Module ActiveDirectory

Add-ADGroupMember `
    -Identity $GroupName `
    -Members $UserName

Write-Host "User $UserName added to group $GroupName successfully."
