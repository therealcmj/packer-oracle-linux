#!/bin/bash
 
set -e

#export PATH=~/0.6.0_darwin_amd64:$PATH 
export PATH=$PATH:~/utils/packer
rm -f build/OEL6_7.box || true
packer build oracle-linux-6.7-x86_64.json
vagrant box remove OEL6_7 || true
vagrant box add OEL6_7 build/OEL6_7.box
