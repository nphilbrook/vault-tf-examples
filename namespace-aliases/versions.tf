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
  alias = "app1"
  namespace = "development/app1"
}

provider "vault" {
  alias = "app2"
  namespace = "development/app2"
}
