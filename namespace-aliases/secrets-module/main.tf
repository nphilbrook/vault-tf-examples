resource "vault_generic_secret" "foo" {
  path  = "kv/foo"
  data_json = <<EOT
{
  "foo":   "bar",
  "pizza": "cheese"
}
EOT
}
