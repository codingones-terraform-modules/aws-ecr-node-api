resource "aws_iam_user" "ecr_deployer" {
  name = "${var.aws_organization}.${var.service}.ecr"
}

resource "aws_iam_group" "ecr_deployer_group" {
  name = "ecr.deployer"
}

resource "aws_iam_user_group_membership" "ecr_deployer_membership" {
  user = aws_iam_user.ecr_deployer.name

  groups = [
    aws_iam_group.ecr_deployer_group.name,
  ]
}

resource "aws_iam_access_key" "ecr_deployer_access_key" {
  user = aws_iam_user.ecr_deployer.name
}

resource "aws_iam_group_policy_attachment" "service_policy_attachment" {
  policy_arn = aws_iam_policy.ecr_policy.arn
  group      = aws_iam_group.ecr_deployer_group.name
}

resource "aws_iam_policy" "ecr_policy" {
  name        = "ecr.policy"
  description = "Policy that grants login and push to the ECR repository"

  policy = var.ecr_policy
}