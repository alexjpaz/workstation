#!/bin/bash
set -e
set -x

sudo -c 'which docker' $WORKSTATION_USER

vim --version | grep '+visualextra'

cat ~/.gitconfig | grep 'forest'


