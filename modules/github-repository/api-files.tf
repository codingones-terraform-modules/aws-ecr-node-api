module "api_templates" {
  for_each = var.api_files

  source       = "github.com/codingones/terraform-remote-template-renderer"
  template_url = each.value.url_of_template
  template_variables = {
    PROJECT    = var.project
    SERVICE    = var.service
    ABOUT      = var.about
    OWNER      = var.github_organization
    REPOSITORY = var.github_repository
  }
}

locals {
  contentMap = { for k, v in module.api_templates : var.api_files[k].path => v.rendered }
}

resource "github_repository_file" "api_files" {
  for_each = local.contentMap

  repository          = github_repository.repository.name
  branch              = github_branch_default.main.branch
  file                = each.key
  content             = each.value
  commit_message      = "feat: adding api file ${each.key}"
  commit_author       = var.commit_author_name
  commit_email        = var.commit_author_email
  overwrite_on_create = true
}


