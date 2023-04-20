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
  description = "A brief description of the repository and project"
  nullable    = false
  default     = false
}

variable "github_organization" {
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

# For now the values is strictly the template one
variable "api_files" {
  type = map(object({
    path = string
    #urlInRepository = string
    url_of_template = string
  }))
  nullable = false
}

variable "ecr_deployer_aws_access_key_id" {
  description = "The ecr deployer access key id"
  nullable    = false
  default     = false
  sensitive   = true
}

variable "ecr_deployer_aws_secret_access_key" {
  description = "The ecr deployer secret access key"
  nullable    = false
  default     = false
  sensitive   = true
}

variable "ecr_deployer_aws_default_region" {
  description = "The ecr deployer region"
  nullable    = false
  default     = false
}

variable "github_token" {
  description = "A github PAT with the right to push and commit on the api repository"
  nullable    = false
  default     = false
}