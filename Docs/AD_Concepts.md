# Active Directory Concepts

This document provides an overview of fundamental Active Directory (AD) components and concepts to help you understand the scripts included in this project.

---

## What is Active Directory?

Active Directory is a Microsoft technology used for managing computers, users, and resources in a networked environment. It provides centralized domain management, authentication, and authorization.

---

## Key Components

### 1. Domain

A domain is a logical group of network objects (users, computers, devices) that share the same Active Directory database.

### 2. Organizational Units (OUs)

OUs are containers within a domain used to organize users, groups, and computers logically. They help apply group policies and delegate administrative control.

### 3. Users

User accounts represent individual people or services that access resources on the network.

### 4. Groups

Groups are collections of user accounts. They simplify permission management by assigning rights to the group rather than individual users.

- **Security Groups** — Used to assign permissions to resources.
- **Distribution Groups** — Used for email distribution lists.

---

## Common Active Directory Tasks Covered in This Project

- Creating users and groups.
- Organizing users into OUs.
- Adding users to groups.
- Removing users.

---

## PowerShell and Active Directory

PowerShell is a powerful scripting language to automate AD tasks. The `ActiveDirectory` PowerShell module provides cmdlets like:

- `New-ADUser` — Create a new user.
- `New-ADGroup` — Create a new group.
- `Add-ADGroupMember` — Add a user to a group.
- `Remove-ADUser` — Remove a user.

This project includes scripts leveraging these cmdlets for automation.
