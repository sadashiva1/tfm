
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.3.0"  # or use "~> 6.3.0"
    }
  }
}

provider "github" {
  token = var.github_tkn
}
variable "github_tkn" {
  type    = string
  default = "" # Optional, or use sensitive = true in TF 0.14+
}

resource "github_repository" "tfm_repo" {
  name        = "tfm_repo"
  description = "Terraform managed repo"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository_file" "example_file" {
  repository    = github_repository.tfm_repo.name  # Use the repo name
  file          = "example.txt"                     # The file you want to create or update
  content       = "Hello, World!"                   # Content of the file
  commit_message = "Update example.txt with Hello, World!"  # Commit message
  overwrite_on_create = true
}

resource "github_repository_file" "readme" {
  repository    = github_repository.tfm_repo.name  # Use the repo name
  branch        = "main"
  file          = "README.md"                     # The file you want to create or update
  content       = "ReadMe file created using terraform"                   # Content of the file
  commit_message = "Update example.txt with Hello, World!"  # Commit message
  overwrite_on_create = true
}


