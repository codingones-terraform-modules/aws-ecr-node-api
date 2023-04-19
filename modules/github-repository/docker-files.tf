resource "github_repository_file" "dockerfile" {
  repository          = github_repository.repository.name
  branch              = github_branch_default.main.branch
  file                = "Dockerfile"
  content             = data.http.dockerfile_template.response_body
  commit_message      = "feat: adding Dockerfile"
  commit_author       = var.commit_author_name
  commit_email        = var.commit_author_email
  overwrite_on_create = true
}

resource "github_repository_file" "dockerignore" {
  repository          = github_repository.repository.name
  branch              = github_branch_default.main.branch
  file                = ".dockerignore"
  content             = data.http.dockerignore_template.response_body
  commit_message      = "feat: adding dockerignore"
  commit_author       = var.commit_author_name
  commit_email        = var.commit_author_email
  overwrite_on_create = true
}

data "http" "dockerfile_template" {
  url = "https://raw.githubusercontent.com/codingones/github-files-templates/main/dockerfile/Dockerfile_amazonlinux_node"
}

data "http" "dockerignore_template" {
  url = "https://raw.githubusercontent.com/codingones/github-files-templates/main/dockerfile/.dockerignore_api_node"
}

