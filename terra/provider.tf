terraform {
  required_providers {
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = ">= 0.18.0"
    }

    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "bitwarden" {
  server = "https://vault.bitwarden.eu"
  vault_path = "/home/tochukwu/snap/bw/current/Bitwarden CLI"
  # vault_path = ""
}

provider "github" {
  owner = local.github_owner
  token = local.github_token
}



