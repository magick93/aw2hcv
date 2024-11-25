
# Dev should only be able to see everything under the sun
path "*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}



path "metadata/*" {
  capabilities = ["list"]
}


