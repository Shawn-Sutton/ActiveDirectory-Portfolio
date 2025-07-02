Param(
    [Parameter(Mandatory=$true)][string]$UserName
)

Import-Module ActiveDirectory

Remove-ADUser `
    -Identity $UserName `
    -Confirm:$false

Write-Host "User $UserName removed successfully."
