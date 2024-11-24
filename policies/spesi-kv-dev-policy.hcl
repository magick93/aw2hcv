
# Dev should only be able to see everything under spesi_kv/dev

# with `data`
path "Secrets/data/spesi_kv/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# without `data`
path "Secrets/spesi_kv/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "Secrets/data/spesi_kv/dev/*" {
  capabilities = ["read", "list"]
}

path "Secrets/metadata/spesi_kv/dev/*" {
  capabilities = ["list"]
}

path "/spesi_kv/data/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "spesi_kv/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "/v1/spesi_kv/data/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "/v1/spesi_kv/data/dev/data/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "/v1/spesi_kv/dev/data/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# from capabilities
path "spesi_kv/data/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "metadata/spesi_kv/dev/*" {
  capabilities = ["list"]
}



