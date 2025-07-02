# Active Directory Basics & Automation

This project demonstrates practical skills in Active Directory (AD) management and automation using PowerShell scripts.

## Project Structure

ActiveDirectory-Portfolio/
├── docs/
│ ├── AD_Concepts.md
│ └── How_to_Run_Scripts.md
├── scripts/
│ ├── Create-ADUser.ps1
│ ├── Create-ADGroup.ps1
│ ├── Add-UserToGroup.ps1
│ └── Remove-ADUser.ps1
└── README.md

## Features

- Overview of key Active Directory concepts.
- PowerShell scripts for:
  - Creating users
  - Creating groups
  - Adding users to groups
  - Removing users
- Detailed documentation guiding script usage and AD basics.

## Prerequisites

- Windows machine joined to an Active Directory domain.
- Active Directory PowerShell module (available via RSAT tools).
- Appropriate permissions to manage AD objects.
- Run PowerShell as Administrator.

## Usage Instructions

1. Review the documentation in the `docs/` folder to understand Active Directory concepts and script usage.
2. Open PowerShell with administrative privileges.
3. Navigate to the `scripts` directory.
4. Execute scripts with the required parameters. Example:

```powershell
.\Create-ADUser.ps1 -UserName "jdoe" -FirstName "John" -LastName "Doe" -Password "P@ssw0rd!"
Script Descriptions
Script Name	Purpose
Create-ADUser.ps1	Creates a new AD user
Create-ADGroup.ps1	Creates a new AD security group
Add-UserToGroup.ps1	Adds a user to an AD group
Remove-ADUser.ps1	Removes a user from Active Directory


## Notes
Ensure your passwords comply with domain security policies.

Use accounts with adequate permissions to perform these actions.

Customize scripts as needed to suit your environment.
