#!/bin/sh

mkdir ~/.ssh

echo $CERT > ~/.ssh/id_rsa
cat ~/.ssh/*

GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa" git clone ssh://git@gitlab.ilumy.com:2222/ilumy/plek.git /app/plek -b master
