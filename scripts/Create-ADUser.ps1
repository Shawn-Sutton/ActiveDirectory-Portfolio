Param(
    [Parameter(Mandatory = $true)][string]$UserName,
    [Parameter(Mandatory = $true)][string]$FirstName,
    [Parameter(Mandatory = $true)][string]$LastName,
    [Parameter(Mandatory = $true)][string]$Password
)

Import-Module ActiveDirectory

function Write-Log {
    param ([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path ".\toolkit.log" -Value "$timestamp : $Message"
}

try {
    New-ADUser `
        -Name "$FirstName $LastName" `
        -GivenName $FirstName `
        -Surname $LastName `
        -SamAccountName $UserName `
        -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) `
        -Enabled $true `
        -PasswordNeverExpires $false `
        -ChangePasswordAtLogon $true

    Write-Host "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] User '$UserName' created successfully." -ForegroundColor Green
    Write-Log "User '$UserName' created with name '$FirstName $LastName'"
} catch {
    Write-Host "[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] Failed to create user '$UserName': $_" -ForegroundColor Red
    Write-Log "Error creating user '$UserName': $_"
}
