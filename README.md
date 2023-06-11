# demo07
How to deploy Azure resouce via Jenkins and Terraform

## Introduction
This repo use for study IAC.

### Software Requirement
1. Azure CLI
2. Jenkins
3. Terraform

### File lists
1. <a href="https://github.com/0psdev/demo07/blob/main/Jenkinsfile" target="_blank">Jenkinsfile</a> -> This file is step for run pipeline
2. <a href="https://github.com/0psdev/demo07/blob/main/provider.tf" target="_blank">provider.tf</a> -> This file is provider to run azure
3. <a href="https://github.com/0psdev/demo07/blob/main/rsg.tf" target="_blank">rsg.tf</a> -> This file is refer module Resource Group
4. <a href="https://github.com/0psdev/demo07/blob/main/variables.tf" target="_blank">variables.tf</a> -> This file is include all variable that need to use deploy resource group 
5. <a href="https://github.com/0psdev/demo07/blob/main/vars.tf" target="_blank">vars.tf</a> -> This file is value in variable

### Preparation
1. Create App registrations in AAD.
2. Add role assignment in Azure subscription with App registrations that you created.
3. Create Secure text in Jinkins.
- AZURE_CLIENT_ID
- AZURE_CLIENT_SECRET
- AZURE_TENENT_ID
- AZURE_SUB_ID
