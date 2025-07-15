# 🧑‍💼 How to Run the Active Directory PowerShell Scripts

This guide explains how to use the PowerShell scripts included in this project to perform common Active Directory tasks.

---

## 📋 Prerequisites

- 🖥️ Windows machine joined to an Active Directory domain  
- 🔧 Active Directory PowerShell module installed (via RSAT tools)  
- 🔐 Admin permissions to manage users and groups  
- 🧑‍💻 PowerShell must be run **as Administrator**

---

## 🚀 Step-by-Step Instructions

### 1️⃣ Open PowerShell as Administrator

Right-click the PowerShell icon and choose **Run as Administrator**.

---

### 2️⃣ Set Execution Policy for the Session (Optional)

If your system restricts script execution, run:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

This enables temporary script execution for the current session only.

3️⃣ Navigate to the Scripts Folder

cd <path-to-project-folder>\scripts

Replace <path-to-project-folder> with your actual local path.

🔧 Script Usage Examples

🆕 Create a New AD User

.\Create-ADUser.ps1 -UserName "jdoe" -FirstName "John" -LastName "Doe" -Password "P@ssw0rd!"

👥 Create a Security Group

.\Create-ADGroup.ps1 -GroupName "ITSupport" -GroupScope "Global"

➕ Add User to a Group

.\Add-UserToGroup.ps1 -UserName "jdoe" -GroupName "ITSupport"

❌ Remove a User

.\Remove-ADUser.ps1 -UserName "jdoe"

⚙️ Script Parameters Overview

Parameter

Description

-UserName

sAMAccountName of the user

-FirstName

User’s first name (for creation only)

-LastName

User’s last name (for creation only)

-Password

Password for new user

-GroupName

Target AD group name

-GroupScope

Scope of group: Global, DomainLocal, Universal

🛠️ Troubleshooting Tips

If you see a “command not found” error:

Confirm Active Directory module is installed via RSAT

Use Import-Module ActiveDirectory manually if needed

Ensure your credentials have sufficient permissions

To debug deeper issues, add the -Verbose flag if supported:

.\Create-ADUser.ps1 -UserName "jdoe" -Verbose

📌 All scripts log actions to toolkit.log for auditing and review. Make sure this file is writable in the script directory.
