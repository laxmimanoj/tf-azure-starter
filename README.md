# tf-azure-starter
startup project to use terraform with azure<br/>

terraform init<br/>
terraform fmt<br/>
terraform validate<br/>
terraform plan<br/>
terraform apply<br/>
terraform apply -auto-approve<br/>
terraform destroy<br/>
terraform show<br/>
terraform state list<br/>

terraform apply -var "resource_group_name=manojtflearnrg"<br/>

terraform output resource_group_id<br/>

az account list<br/>
az account set --subscription="SUBSCRIPTION_ID"<br/>
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/4SUBSCRIPTION_ID"<br/>
