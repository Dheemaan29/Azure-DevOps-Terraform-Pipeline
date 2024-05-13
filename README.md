# Azure-DevOps-Terraform-Pipeline

![image](https://github.com/Dheemaan29/Azure-DevOps-Terraform-Pipeline/blob/main/assets/https___dev-to-uploads.s3.amazonaws.com_i_tuixe4xcereaxr1egwoa.avif)

## How Terraform works

![image](https://github.com/Dheemaan29/Azure-DevOps-Terraform-Pipeline/blob/main/assets/1_AFRu5LYKorZ5dRiPjrOz3g.webp)

## Important Pipeline Variables

![image](https://github.com/Dheemaan29/Azure-DevOps-Terraform-Pipeline/blob/main/assets/287426087-7a0c53ea-0b7c-4098-b264-c66bb778fddf.png)

### We can use the below Azure cli commands to set the terraform remote backend, or you can do it via the portal

``` shell
#!/bin/bash
## The Storage account name must be unique, and the values below should match your backend.tf
RESOURCE_GROUP_NAME=demo-resources
STORAGE_ACCOUNT_NAME=techtutorialswithpiyush
CONTAINER_NAME=prod-tfstate

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location canadacentral

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME
```

### Deployment stage

![image](https://github.com/piyushsachdeva/AzureDevOps-Zero-to-Hero/assets/40286378/66fe7d5d-b665-496a-b43b-e85a88f7271d)

### Destroy stage

![image](https://github.com/piyushsachdeva/AzureDevOps-Zero-to-Hero/assets/40286378/5d17e417-8a7d-49a6-8c9d-b120e236fde8)
