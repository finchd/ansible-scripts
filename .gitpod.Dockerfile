FROM gitpod/workspace-full 
# Ubuntu 20.04
#FROM webdevops/bootstrap # has ansible, etc but possibly opensuse-based?

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# act out all become: true actions as gitpod doesn't allow sudo:
# 1. testing roles will have to be done locally: rclone/mitogen

# 2. setup_ansible_tasks
RUN apt install -y gcc python-dev libffi-dev libssl-dev
