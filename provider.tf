terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.3.0"
     # version = "~> 6.3.0"
    }
  }
}

provider "github" {
    owner = "sadashiva1"
  # Configuration options
}


# begins a single-line comment, ending at the end of the line.
// also begins a single-line comment, as an alternative to # .
/* over multiple lines */ 