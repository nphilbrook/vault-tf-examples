resource "vault_generic_secret" "foo" {
  path  = "kv/foo2"
  data_json = <<EOT
{
  "foo":   "bar",
  "pizza": "cheese"
}
EOT
}
