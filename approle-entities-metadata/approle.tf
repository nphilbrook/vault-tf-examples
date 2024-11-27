data "vault_auth_backend" "approle" {
  path = "approle"
}

resource "vault_identity_entity" "payments" {
  name = "payments"
  metadata = {
    ci_id = "123"
  }
}

resource "vault_approle_auth_backend_role" "payments" {
  role_name      = "payments"
  backend        = data.vault_auth_backend.approle.path
  token_policies = ["templated_app"]
}

resource "vault_identity_entity_alias" "payments" {
  name           = vault_approle_auth_backend_role.payments.role_id
  mount_accessor = data.vault_auth_backend.approle.accessor
  canonical_id   = vault_identity_entity.payments.id
}

resource "vault_identity_entity" "auditing" {
  name = "auditing"
  metadata = {
    ci_id = "456"
  }
}

resource "vault_approle_auth_backend_role" "auditing" {
  role_name      = "auditing"
  backend        = data.vault_auth_backend.approle.path
  token_policies = ["templated_app"]
}

resource "vault_identity_entity_alias" "auditing" {
  name           = vault_approle_auth_backend_role.auditing.role_id
  mount_accessor = data.vault_auth_backend.approle.accessor
  canonical_id   = vault_identity_entity.auditing.id
}
