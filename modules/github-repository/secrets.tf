resource "github_actions_secret" "api_deployer_access_key_id" {
  secret_name     = "AWS_ACCESS_KEY_ID"
  repository      = github_repository.repository.name
  plaintext_value = var.ecr_deployer_aws_access_key_id
}

resource "github_actions_secret" "api_deployer_access_key_secret" {
  secret_name     = "AWS_SECRET_ACCESS_KEY"
  repository      = github_repository.repository.name
  plaintext_value = var.ecr_deployer_aws_secret_access_key
}

resource "github_actions_secret" "api_deployer_aws_default_region" {
  secret_name     = "AWS_DEFAULT_REGION"
  repository      = github_repository.repository.name
  plaintext_value = var.ecr_deployer_aws_default_region
}

