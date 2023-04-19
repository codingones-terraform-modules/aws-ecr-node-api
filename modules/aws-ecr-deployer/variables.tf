variable "aws_organization" {
  description = "The organization name in aws organizations"
  nullable    = false
  default     = false
}

variable "service" {
  description = "The service name in the Project-Service-Layer architecture"
  nullable    = false
  default     = false
}

variable "ecr_policy" {
  description = "The api deployer group policy that allows to login and push to the ECR repository"
  nullable    = false
  default     = false
}