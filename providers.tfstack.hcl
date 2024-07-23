required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.59.0"
  }
#   kubernetes = {
#     source  = "hashicorp/kubernetes"
#     version = "~> 2.31.0"
#   }
}

provider "aws" "main" {
    config {
        region = var.region
        assume_role_with_web_identity {
            role_arn                = var.role_arn
            web_identity_token_file = var.identity_token_file
        }
    }
}