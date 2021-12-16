## Ansible RKE2 playbook

This playbook installs all the dependencies and installs RKE2 to target machines with multi master support. 

### How to use this playbook

- You need to clone this on jump server for the installation. 
- You need to provide configuration variables in the "./vars/general-config.yaml" file.
- You need to provide inventory in the  "inventory" file.
- Make sure you have minimum python 2.7 and pip installed.
- Install ansible via pip "pip install ansible".(not automated since the OS may not have python installed).
- Run "provision.sh".

### How to use this playbook with docker

- You need to build docker image like `docker build -t rke2-ansible .`
- You need to provide ssh private key(private key path defined in vars/general-config.yml. You have to provide key on this path.)
    - Suggestion: Copy your private key to this repository's root path, change name of your private key file like `id_rsa`. Then playbook will use this key file by default
    
- Run `docker run -it -v $(pwd):/app rke2-ansible "./provision.sh"`


