output "ecr_deployer_iam_access_key_id" {
  value     = aws_iam_access_key.ecr_deployer_access_key.id
  sensitive = true
}

output "ecr_deployer_iam_access_key_secret" {
  value     = aws_iam_access_key.ecr_deployer_access_key.secret
  sensitive = true
}