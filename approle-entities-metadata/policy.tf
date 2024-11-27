resource "vault_policy" "templated_app" {
  name   = "templated_app"
  policy = file("${path.module}/templated_app.hcl")
}

