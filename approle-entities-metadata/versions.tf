terraform {
  required_version = "~>1.10"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "~>4.5"
    }
  }
}

provider "vault" {
}
