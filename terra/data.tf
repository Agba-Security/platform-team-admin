data "bitwarden_item_login" "github_secrets" {
  search = "Agba Security Github Secrets"
}

data "github_repository_file" "commit" {
  for_each   = github_repository.repositories
  repository = each.value.name
  branch     = "main"
  file       = "CONTRIBUTE.md"
}

