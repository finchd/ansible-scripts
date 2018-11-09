finchd's ansible-scripts
========================

[![Build Status](https://travis-ci.com/finchd/ansible-scripts.svg?branch=master)](https://travis-ci.com/finchd/ansible-scripts)

Everybody has a script staging repo, this one's mine.
Place for one-liners and single-purpose playbooks. Playbooks may get turned into modules or roles as they grow in complexity, but templates/patterns should remain here.

localhost_shim_playbook.yaml is a shim for running lists of tasks - a list of tasks is not a valid playbook as it doesn't declare the hosts. But for prototyping new actions, I never have particular hosts in mind anyway.

Task file templates:

1. install_single_scripts_from_github.yaml
     single task to get_url from a github commit, possibly add simple version checking later - this shall not grow to be my own package manager!



Usage
=====

```
$ cat > ~/.ansible.cfg << EOF
[defaults]
roles_path=~/.ansible/roles
inventory=./inventory
EOF
$ ansible-galaxy -r requirements.yaml
$ ansible-playbook localhost_shim_playbook.yaml -K
```
