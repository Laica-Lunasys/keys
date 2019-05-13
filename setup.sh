#!/bin/bash

dot_ssh="$HOME/.ssh"

if [ ! -e "$dot_ssh" ]; then
    mkdir $dot_ssh
fi
chmod 700 $dot_ssh

if [ -e "$dot_ssh/authorized_keys" ]; then
    mv -v $dot_ssh/authorized_keys $dot_ssh/authorized_keys_$(date +%Y%m%d_%H%M%S)
fi
touch $dot_ssh/authorized_keys
chmod 600 $dot_ssh/authorized_keys

curl -fsSL https://github.com/Laica-Lunasys.keys > $dot_ssh/authorized_keys
