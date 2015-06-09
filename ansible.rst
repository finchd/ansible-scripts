one-liners
==========

ansible -m apt -a 'name=gcc state=latest' <box-group>

one-play
========

ansible-playbook ./install_gcc.yaml -f 20 <copy the .retry file tin to only do the ones that failed last time>

one-module
==========

ansible-galaxy install user.module
