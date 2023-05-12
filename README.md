# Terraform AWS ECR Api Container

## About

A module that aims to provide a ready to develop configuration of a node api deployed to AWS through ECR.

## TOC

- 🪧 [About](#about)
- 🛠️ [Usage](#usage)
- 🤝 [Contribution](#contribution)
- 🏗️ [Built With](#built-with)
- 📝 [License](#license)


## Usage

Example usage.

```terraform
module "api_repository" {
  source = "github.com/codingones-terraform-modules/aws-ecr-node-api"

  aws_organization    = local.project.aws_organizational_unit
  github_organization = local.project.github_organization
  github_repository   = "api"
  project = local.project.name
  service = "api"
  github_token = var.github_token

  about   = "A basic fastify api for project"
  template_repository = "codingones-github-templates/aws-application-api-fastify"
  policy = local.policies.api

  providers = {
    github = github
    aws    = aws.child
    http   = http
  }

  depends_on = [module.github_organization_variables]
}
```

## Contribution

This repository is not open to external contribution yet.
I you'd like to please send me an email.

## Built With

### Languages & Frameworks

- [Terraform](https://www.terraform.io/) is an open-source infrastructure-as-code tool that enables provisioning, management, and versioning of cloud, on-premises, and third-party resources using declarative configuration files.

## License

See the [LICENSE.md](./LICENSE.md) of the repository.
