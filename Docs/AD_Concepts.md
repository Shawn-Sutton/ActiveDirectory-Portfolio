
# 🧠 Active Directory Concepts

This guide introduces essential Active Directory (AD) components to support the automation scripts included in this project.

---

## 🏢 What is Active Directory?

Active Directory is Microsoft's centralized system for managing users, computers, and resources in a domain environment. It handles:
- 🆔 Authentication
- 🛂 Authorization
- 🧭 Directory-based organization

---

## 🧩 Key Components

### 🌐 Domain
A container for network objects that share a unified AD database.

### 🗂️ Organizational Units (OUs)
Sub-containers within a domain used to logically group users, devices, and apply policies.

### 👤 Users
Accounts representing people or services that access domain resources.

### 👥 Groups
Collections of users used to simplify access and permission control.

- **Security Groups** — For resource permissions  
- **Distribution Groups** — For email communication lists

---

## 🔧 AD Tasks Automated by This Project

- ✅ Create users and groups  
- ✅ Add users to groups  
- ✅ Remove users  
- ✅ Automate actions via PowerShell

---

## 💻 PowerShell Cmdlets & Linked Scripts

These scripts use the `ActiveDirectory` PowerShell module:

| Cmdlet | Purpose | Script |
|--------|---------|--------|
| `New-ADUser` | Creates a new user | [`Create-ADUser.ps1`](https://github.com/Shawn-Sutton/ActiveDirectory-Portfolio/blob/main/scripts/Create-ADUser.ps1) |
| `New-ADGroup` | Creates a new group | [`Create-ADGroup.ps1`](https://github.com/Shawn-Sutton/ActiveDirectory-Portfolio/blob/main/scripts/Create-ADGroup.ps1) |
| `Add-ADGroupMember` | Adds a user to a group | [`Add-UserToGroup.ps1`](https://github.com/Shawn-Sutton/ActiveDirectory-Portfolio/blob/main/scripts/Add-UserToGroup.ps1) |
| `Remove-ADUser` | Deletes a user | [`Remove-ADUser.ps1`](https://github.com/Shawn-Sutton/ActiveDirectory-Portfolio/blob/main/scripts/Remove-ADUser.ps1) |

Each script includes timestamped logging to `toolkit.log` and is designed to run in a domain environment with RSAT tools installed.

---

🧠 *Tip: You can explore the full project and documentation on [GitHub here](https://github.com/Shawn-Sutton/ActiveDirectory-Portfolio).*
