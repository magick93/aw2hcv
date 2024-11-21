# aw2hcv
Ansible write to Hashicorp Vault

# Setup

## Installation

1. Install Ansible and Docker
1. `pip install -r requirements.txt`
1. `ansible-galaxy install -r requirements.yml`


# Running...

1. Start the local ansible with `docker compose up -d`
1. Unseal the local vault with `ansible-playbook hcv_init_unseal.yml` in the `plays` directory. Take note of the `Display vault root token`. Copy the `export VAULT_TOKEN=xxxxxxxxxxxxxxxxxx` and run this in the terminal you will use to run the following commands. 
1. 

# Acknowledgement 
The docker compose vault setup is from https://github.com/spkane/vault-local-dev
