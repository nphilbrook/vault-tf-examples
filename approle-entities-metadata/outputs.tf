output "payments_role_id" {
  value = vault_approle_auth_backend_role.payments.role_id
}


output "auditing_role_id" {
  value = vault_approle_auth_backend_role.auditing.role_id
}

