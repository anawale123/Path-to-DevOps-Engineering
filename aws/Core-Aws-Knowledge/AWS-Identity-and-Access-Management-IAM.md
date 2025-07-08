# 🔐 AWS Identity and Access Management (IAM)

AWS IAM (Identity and Access Management) is a global service that helps you **securely manage access** to AWS services and resources. IAM allows you to create users, groups, and roles, and define permissions through policies — enabling fine-grained control over your AWS environment.

---

## ✅ What Can You Do with IAM?

- 👥 **Create IAM Users & Groups**  
  Replace sharing the root account with individual users and logically grouped roles.

- 🔒 **Grant Fine-Grained Permissions**  
  Define who can do *what*, *where*, and *on which resource*.

- 🕐 **Use IAM Roles**  
  Assign temporary or cross-service permissions (e.g., an EC2 instance accessing S3).

- 📜 **Attach IAM Policies**  
  Policies are JSON documents that define *allowed or denied actions*. These can be attached to users, groups, or roles.

---

## 📦 Example Use Cases

- ✅ Grant developers access to **S3**, but restrict **EC2** usage.
- ✅ Allow a **Lambda function** to write to **DynamoDB**.
- ✅ Enable cross-account access (Account A trusts Account B via a role).
- ✅ Provide devs access to **development resources**, but restrict **production**.

---

## 🛡️ IAM Key Concepts

| Concept   | Description                                                                 | Example             |
|-----------|-----------------------------------------------------------------------------|---------------------|
| **User**  | A person or application accessing AWS via Console, CLI, or SDK              | `dev_user`, `app_bot` |
| **Group** | A collection of users with shared permissions                               | `DevTeam`, `AdminTeam` |
| **Role**  | A set of temporary permissions assumed by users, apps, or AWS services      | `LambdaExecutionRole` |
| **Policy**| JSON document that defines what actions are allowed or denied               | `S3FullAccess`, `EC2ReadOnly` |

---

## 🎓 IAM Roles – Advanced Concepts

IAM Roles are critical in:

- **🧠 Cross-Service Access**  
  Example: Allowing EC2 to read from an S3 bucket.

- **🌐 Federation**  
  External identities (Google, Active Directory, SAML) can assume roles without creating AWS IAM users.

- **🔁 Cross-Account Access**  
  Trust relationships between AWS accounts for secure role assumption.

---

## ⚙️ Role Assumption with AWS STS

1. **Assume Role** – User or service requests temporary access.
2. **AWS STS** – Security Token Service issues temporary credentials.
3. **Session Duration** – Credentials expire within a specified time (default: 1 hour, configurable).

---

## 📝 Summary

IAM is the cornerstone of AWS security. It helps ensure the **right people and services have the right access to the right resources** — nothing more, nothing less.

> 🔐 Security best practice: Always follow the principle of least privilege.
