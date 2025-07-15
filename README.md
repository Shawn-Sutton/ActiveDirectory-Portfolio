# 🧑‍💻 Active Directory Basics & Automation

This project demonstrates hands-on skills in Active Directory (AD) management and automation using PowerShell. It's designed for IT support scenarios where rapid user provisioning and group management are essential.

![PowerShell](https://img.shields.io/badge/PowerShell-Automation-blue?style=flat-square)
![Active Directory](https://img.shields.io/badge/Active%20Directory-Management-green?style=flat-square)
![IT Support](https://img.shields.io/badge/Tier%201-Ready-brightgreen?style=flat-square)

---

## 📁 Project Structure

ActiveDirectory-Portfolio/ ├── docs/ │ ├── AD_Concepts.md │ └── How_to_Run_Scripts.md ├── scripts/ │ ├── Create-ADUser.ps1 │ ├── Create-ADGroup.ps1 │ ├── Add-UserToGroup.ps1 │ └── Remove-ADUser.ps1 └── README.md


---

## ✨ Features

- ✅ Overview of key Active Directory concepts and practices
- ✅ PowerShell scripts for:
  - Creating users
  - Creating groups
  - Adding users to groups
  - Removing users
- ✅ Step-by-step documentation to support beginners and IT trainees

---

## 🧱 Prerequisites

- Windows machine joined to an Active Directory domain
- Active Directory PowerShell module (via RSAT)
- Admin-level permissions to manage AD objects
- Run PowerShell as Administrator

---

## 🚀 Usage Instructions

1. Review `docs/AD_Concepts.md` for foundational knowledge  
2. Open PowerShell with administrative privileges  
3. Navigate to the `scripts/` folder  
4. Execute scripts with parameters. Example:

```powershell
.\Create-ADUser.ps1 -UserName "jdoe" -FirstName "John" -LastName "Doe" -Password "P@ssw0rd!"
📜 Script Descriptions
Script Name	Purpose
Create-ADUser.ps1	Creates a new AD user
Create-ADGroup.ps1	Creates a new AD security group
Add-UserToGroup.ps1	Adds a user to an AD group
Remove-ADUser.ps1	Removes a user from Active Directory
⚠️ Notes & Recommendations
Ensure password complexity aligns with domain policy

Use elevated accounts with adequate AD permissions

Customize scripts to fit your local domain structure and naming conventions

👤 Author
Shawn Sutton 📍 Henryetta, OK 🎯 Pursuing CompTIA A+ Certification 📂 GitHub Portfolio
