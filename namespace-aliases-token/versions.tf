terraform {
  required_version = "~>1.7"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~>4.4"
    }
  }
}

provider "vault" {
  alias     = "rds"
  namespace = "development/app1"
  token     = var.rds_token
}

provider "vault" {
  alias     = "eks"
  namespace = "development/app2"
  token     = var.eks_token
}
