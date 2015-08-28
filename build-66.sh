#!/bin/bash
 
set -e

#export PATH=~/0.6.0_darwin_amd64:$PATH 
rm build/OEL6_6.box || true
packer build oracle-linux-6.6-x86_64.json
vagrant box remove OEL6_6 || true
vagrant box add OEL6_6 build/OEL6_6.box
