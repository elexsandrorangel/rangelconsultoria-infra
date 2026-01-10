# Rangel Consultoria Infrastructure

This repository contains infrastructure as code managed with [Terraform](https://www.terraform.io/).

## Structure
- All Terraform configuration files are stored in this repository.
- State files and sensitive data are excluded via `.gitignore`.

## Getting Started
1. **Install Terraform:**
   - [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. **Initialize the project:**
   ```sh
   terraform init
   ```
3. **Plan changes:**
   ```sh
   terraform plan
   ```
4. **Apply changes:**
   ```sh
   terraform apply
   ```
5. **To see sensitive values**
   ```sh
   terraform output -raw <key>
   ```
## Best Practices
- Do not commit `.tfstate` or `.tfvars` files.
- Use remote backends for state management in production.
- Review changes before applying.
