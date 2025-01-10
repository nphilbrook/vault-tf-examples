# Assumptions

Vault enterprise server with namespaces:
* development
    * app1
        * kv engine mounted at `kv`
    * app2
        * kv engine mounted at `kv`

Specify `VAULT_ADDR` on the command line and add relevant token to terraform.tfvars
