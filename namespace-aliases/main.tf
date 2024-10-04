module "secret_app1" {
  source = "./secrets-module"
  providers = {
    vault = vault.app1
  }
}

module "secret" {
  source = "./secrets-module"
  providers = {
    vault = vault.app2
  }
}
