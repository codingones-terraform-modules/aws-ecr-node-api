variable "github_organization" {
  description = "The github organization name"
  nullable    = false
  default     = false
}

variable "terraform_organization" {
  description = "The terraform organization name"
  nullable    = false
  default     = false
}

variable "aws_organizational_unit" {
  description = "The aws organization organization name"
  nullable    = false
  default     = false
}

variable "github_repository" {
  description = "The repository which host the code within the organization"
  nullable    = false
  default     = false
}

variable "template_repository" {
  description = "The repository which host the template to fork / sync"
  nullable    = false
  default     = false
}

variable "commit_author" {
  description = "The commit author name for generated files"
  nullable    = true
  default     = "github-actions[bot]"
}


variable "commit_email" {
  description = "The commit author email for generated files"
  nullable    = true
  default     = "github-actions[bot]@users.noreply.github.com"
}

variable "project" {
  description = "The project name in the Project-Service-Layer architecture"
  nullable    = false
  default     = false
}

variable "service" {
  description = "The service name in the Project-Service-Layer architecture"
  nullable    = false
  default     = false
}

variable "policy" {
  description = "The service deployer group policy"
  nullable    = false
  default     = false
}

variable "github_token" {
  default = ""
}