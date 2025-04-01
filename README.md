# Prerequisites 

- Ansible
- nix-shell

# Apply playbook

```bash 
export BWS_ACCESS_TOKEN=...
bws run -- "ansible-playbook homelab.yml"
```

## Apply specific tags

```bash
export BWS_ACCESS_TOKEN=...
bws run -- "ansible-playbook homelab.yml --tags docker"
```