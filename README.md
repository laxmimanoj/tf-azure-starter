# tf-azure-starter
startup project to use terraform with azure

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform apply -auto-approve
terraform destroy
terraform show
terraform state list

terraform apply -var "resource_group_name=manojtflearnrg"

terraform output resource_group_id

az account list
az account set --subscription="SUBSCRIPTION_ID"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/4SUBSCRIPTION_ID"