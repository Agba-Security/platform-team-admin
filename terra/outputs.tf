output "repository_names" {
  description = "Names of repositories created by terraform"

  value = {
    for name, repo in github_repository.repositories :
    name => repo.name
  }
}

output "commit_author" {
  value = {
    for key, commit in data.github_repository_file.commit :
    key => commit.commit_author
  }
}

output "commit_emails" {
  value = {
    for key, commit in data.github_repository_file.commit :
    key => commit.commit_email
  }
}