# tfm
#===========some commands
# begins a single-line comment, ending at the end of the line.
// also begins a single-line comment, as an alternative to # .
/* over multiple lines */
 
# terraform integrations
# terraform plan
# terraform apply

# terraform plan -out=plan1
# terraform apply plan1
# terraform show
# terraform state list
# terraform state show resource_type.resource_name
# terraform state show github_repository.tfm_repo

# terraform show
# terraform state list
# terraform state show resource_type.resource_name
# terraform state show github_repository.tfm_repo

# history -c #== clears history
/*
provider "github" {
  token = ""  # Your GitHub token
}
*/


#terraform plan -var "github_token=$GITHUB_TOKEN"
#terraform apply -var "github_token=$GITHUB_TOKEN"
terraform plan -var "github_token=ghp_ex"
terraform apply -var "github_token=ghp_ex"

terraform plan -var "github_tkn=ghp_ex"
terraform apply -var "github_tkn=ghp_ex"
