locals {
  platform_config = yamldecode(
    file("${path.module}/../config/platform_team_values.yml")
  )

  repositories = {
    for repo in local.platform_config.github_repositories :
        repo.name => repo
  }

  team_members = {
    for member in local.platform_config.github_organization_members :
        member.github-username => member
  }
}


locals {
  github_token = one([
    for field in data.bitwarden_item_login.github_secrets.field :
    field.hidden
    if field.name == "terraform-github-token"
  ])

  github_owner = one([
    for field in data.bitwarden_item_login.github_secrets.field :
    field.text
    if field.name == "terraform-github-owner"
  ])
}