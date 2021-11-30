## Ansible RKE2 playbook

This playbook installs all the dependencies and installs RKE2 to target machines with multi master support. 

### How to use this playbook

- You need to clone this on jump server for the installation. 
- You need to provide configuration variables in the "./vars/general-config.yaml" file.
- You need to provide inventory in the  "inventory" file.
- Make sure you have minimum python 2.7 and pip installed.
- Install ansible via pip "pip install ansible".(not automated since the OS may not have python installed).
- Run "provision.sh".
