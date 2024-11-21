# aw2hcv
Ansible write to Hashicorp Vault

# Setup

## Installation

1. Install Ansible and Docker
1. `pip install -r requirements.txt`
1. `ansible-galaxy install -r requirements.yml`
1. Install the vault cli:


```
sudo apt update && sudo apt install gpg wget
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vault
```



# Running...

1. Start the local ansible with `docker compose up -d`
1. Unseal the local vault with `ansible-playbook hcv_init_unseal.yml` in the `plays` directory. Take note of the `Display vault root token`. Copy the `export VAULT_TOKEN=xxxxxxxxxxxxxxxxxx` and run this in the terminal you will use to run the following commands. 
1. `ansible-playbook migrate_env_to_hashicorp_vault.yml` will read example variables from `vars/hashicorp_vault.yml` and store them in Hashicorp Vault. 

## Utilities

- `hcv_caps.yml` tests what capabilities are user/token has. 

# Acknowledgement 
The docker compose vault setup is from https://github.com/spkane/vault-local-dev
