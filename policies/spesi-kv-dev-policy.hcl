
# Dev should only be able to see everything under spesi_kv
path "/spesi_kv/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "spesi_kv/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "metadata/spesi_kv/dev/*" {
  capabilities = ["list"]
}


