
# Admin should be able to see everything under spesi_kv
path "/spesi_kv/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "spesi_kv/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "metadata/spesi_kv/*" {
  capabilities = ["list"]
}


