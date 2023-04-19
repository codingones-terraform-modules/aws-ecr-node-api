module "ecr_aws_deployer" {
  source = "github.com/codingones/terraform-aws-ecr-api-container/modules/aws-ecr-deployer"

  aws_organization = var.aws_organization
  service          = var.service
  ecr_policy       = var.ecr_policy

  providers = {
    aws = aws
  }
}

module "api_github_repository" {
  source = "github.com/codingones/terraform-aws-ecr-api-container/modules/github-repository"

  github_organization = var.github_organization
  github_repository   = var.github_repository
  project             = var.project
  service             = var.service
  commit_author_name  = var.commit_author_name
  commit_author_email = var.commit_author_email
  api_files           = var.api_files
  about               = var.about

  ecr_deployer_aws_access_key_id     = module.ecr_aws_deployer.ecr_deployer_iam_access_key_id
  ecr_deployer_aws_secret_access_key = module.ecr_aws_deployer.ecr_deployer_iam_access_key_secret

  providers = {
    github = github
    http   = http
  }

  depends_on = [module.ecr_aws_deployer]
}