
# Dev should only be able to see everything under spesi_kv
path "path_does_not_exist/" {
  capabilities = ["deny"]
}



path "metadata/path_does_not_exist/" {
  capabilities = ["deny"]
}


