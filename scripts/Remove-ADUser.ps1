Param(
    [Parameter(Mandatory = $true)][string]$UserName
)

Import-Module ActiveDirectory

function Write-Log {
    param ([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path ".\toolkit.log" -Value "$timestamp : $Message"
}

try {
    Remove-ADUser -Identity $UserName -Confirm:$false
    Write-Host "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] User '$UserName' removed successfully." -ForegroundColor Green
    Write-Log "User '$UserName' removed from AD"
} catch {
    Write-Host "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] Failed to remove user '$UserName': $_" -ForegroundColor Red
    Write-Log "Error removing user '$UserName': $_"
}
