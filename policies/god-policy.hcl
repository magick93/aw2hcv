
# Dev should only be able to see everything under spesi_kv
path "*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}



path "metadata/*" {
  capabilities = ["list"]
}


