terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.3.0"
     # version = "~> 6.3.0"
    }
  }
}

/*
provider "github" {
    owner = "sadashiva1"
    # If your Git provider requires authentication, configure it here
    username = ""  # Optional, if needed
    token    = ""     # Optional, if needed
}
*/


# begins a single-line comment, ending at the end of the line.
// also begins a single-line comment, as an alternative to # .
/* over multiple lines */ 

# terraform integrations
# terraform plan
# terraform apply

# terraform plan -out=plan1
# terraform apply plan1


# history -c #== clears history