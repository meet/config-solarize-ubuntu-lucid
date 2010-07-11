#!/bin/bash

# sudoers
echo 'Defaults mail_always' >> /etc/sudoers
echo '%lab-admins ALL= ALL' >> /etc/sudoers

# Configuration files
GIT=$(mktemp -d)
git clone --no-checkout https://github.com/meet/config-solarize-ubuntu-lucid.git "$GIT"
mv "$GIT"/.git /
(cd / && git checkout --force)
rm -rf "$GIT"

# NFS
mkdir -p /srv/home
