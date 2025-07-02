# How to Run the Active Directory PowerShell Scripts

This guide explains how to use the PowerShell scripts included in this project to perform common Active Directory tasks.

---

## Prerequisites

- Windows machine joined to an Active Directory domain.
- Active Directory PowerShell module installed (comes with RSAT tools).
- Proper permissions to create/manage users and groups in AD.
- PowerShell running as Administrator.

---

## Running the Scripts

### 1. Open PowerShell as Administrator

Right-click on PowerShell and select "Run as Administrator".

### 2. Set Execution Policy for the Session (if needed)

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
This allows running unsigned scripts temporarily.

3. Navigate to the scripts Folder
powershell
cd <path-to-project-folder>\scripts
4. Running the Scripts
Create a New User
powershell
.\Create-ADUser.ps1 -UserName "jdoe" -FirstName "John" -LastName "Doe" -Password "P@ssw0rd!"
Create a New Group
powershell
.\Create-ADGroup.ps1 -GroupName "ITSupport" -GroupScope "Global"
Add User to Group
powershell
Copy
Edit
.\Add-UserToGroup.ps1 -UserName "jdoe" -GroupName "ITSupport"
Remove a User
powershell
.\Remove-ADUser.ps1 -UserName "jdoe"
Script Parameters
-UserName: The username or sAMAccountName for the user.

-FirstName: User's first name (for creation).

-LastName: User's last name (for creation).

-Password: Password for the new user.

-GroupName: Name of the AD group.

-GroupScope: Group scope (Global, DomainLocal, Universal).

Notes
Customize parameters as needed.

Make sure passwords meet your domain password policy.

Scripts must be run with an account that has the appropriate AD permissions.

Troubleshooting
If you get “command not found” errors, make sure the Active Directory module is installed.

Check your user permissions.

For detailed errors, run scripts with -Verbose parameter (if implemented).
