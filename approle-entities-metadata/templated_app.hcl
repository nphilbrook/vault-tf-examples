# read only to the "kv" mount
path "kv/data/{{ identity.entity.metadata.ci_id }}*" {
  capabilities = [ "create", "read", "update", "delete", "list", "patch", "sudo"]
}

path "team-se/data/{{ identity.entity.name }}*" {
  capabilities = [ "create", "read", "update", "delete", "list", "patch", "sudo"]
}
