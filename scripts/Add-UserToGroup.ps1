Param(
    [Parameter(Mandatory = $true)][string]$UserName,
    [Parameter(Mandatory = $true)][string]$GroupName
)

Import-Module ActiveDirectory

function Write-Log {
    param ([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path ".\toolkit.log" -Value "$timestamp : $Message"
}

try {
    Add-ADGroupMember -Identity $GroupName -Members $UserName
    Write-Host "User '$UserName' added to group '$GroupName' successfully." -ForegroundColor Green
    Write-Log "User '$UserName' added to group '$GroupName'"
} catch {
    Write-Host "Failed to add user '$UserName' to group '$GroupName': $_" -ForegroundColor Red
    Write-Log "Error adding user '$UserName' to group '$GroupName': $_"
}

