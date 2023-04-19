data "github_organization" "organization" {
  name = var.github_organization
}

resource "github_repository" "repository" {
  name                   = "api"
  description            = "This is an api repository, it host the api files and necessary definition for containerized deployment"
  visibility             = "public"
  auto_init              = true
  delete_branch_on_merge = true
  topics                 = ["api", "node", "aws", "ecr", "docker"]
}

resource "github_branch_default" "main" {
  repository = github_repository.repository.name
  branch     = "main"

  depends_on = [github_repository.repository]
}

resource "github_branch_protection" "main_branch_protection" {
  repository_id                   = github_repository.repository.node_id
  pattern                         = "main"
  require_signed_commits          = true
  required_linear_history         = true
  require_conversation_resolution = true

  depends_on = [github_branch_default.main]
}