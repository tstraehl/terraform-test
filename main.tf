provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "idorsia-terraform-state-dev"
    key    = "my-test-repo/gitlab.tfstate"
    region = "eu-west-1"
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
