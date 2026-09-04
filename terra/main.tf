resource "github_repository" "repositories" {
  for_each = local.repositories
  name        = each.value.name
  description = try(each.value.description, "")

  visibility = try(each.value.visibility, "public")
  auto_init = true

  lifecycle {
    prevent_destroy = true
  }

  
}

# Add a user to the organization
resource "github_membership" "membership" {
  for_each = local.team_members
  username = each.value.github-username
  role     = each.value.github-role
}

resource "github_branch_protection" "restrict_deletion" {
  for_each = github_repository.repositories
  repository_id = each.value.node_id
  # also accepts repository name
  # repository_id  = github_repository.example.name

  pattern          = "main"
  enforce_admins   = true
  allows_deletions = false

}

resource "github_branch" "development" {
  for_each = github_repository.repositories
  repository = each.value.name
  branch     = "main"
}

resource "github_repository_file" "commit_convention" {
  for_each            = github_repository.repositories
  repository          = each.value.name
  branch              = github_branch.development[each.key].branch
  file                = local.repositories[each.key].commit_convention
  content             = file("${path.module}/../${local.repositories[each.key].commit_convention}")
  commit_message      = "Agba Security: Add CONTRIBUTING.md file to ${each.value.name} repository"
  commit_author       = data.github_repository_file.commit[each.key].commit_author
  commit_email  = data.github_repository_file.commit[each.key].commit_email
  overwrite_on_create = true
  
}