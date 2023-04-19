
variable "github_organization" {
  description = "The github organization name"
  nullable    = false
  default     = false
}

variable "aws_organization" {
  description = "The github organization name"
  nullable    = false
  default     = false
}

variable "github_repository" {
  description = "The repository which host the code within the organization"
  nullable    = false
  default     = false
}

variable "commit_author_name" {
  description = "The commit author name for generated files"
  nullable    = false
  default     = false
}


variable "commit_author_email" {
  description = "The commit author email for generated files"
  nullable    = false
  default     = false
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

variable "about" {
  type        = string
  description = "A brief description of the repository and project"
  nullable    = true
  default     = ""
}

variable "ecr_policy" {
  description = "The api deployer group policy that allows to login and push to the ECR repository"
  nullable    = false
  default     = false
}

# For now the content is strictly the template one
variable "api_files" {
  type = map(object({
    path = string
    #urlInRepository = string
    url_of_template = string
  }))
  nullable = false
}