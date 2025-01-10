module "secret_app1" {
  source = "./secrets-module"
  providers = {
    vault = vault.rds
  }
}

module "secret" {
  source = "./secrets-module"
  providers = {
    vault = vault.eks
  }
}
