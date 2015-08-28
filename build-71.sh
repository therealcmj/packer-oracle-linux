#!/bin/bash
 
set -e

#export PATH=~/0.6.0_darwin_amd64:$PATH 
rm build/OEL7_1.box || true
packer build oracle-linux-7.1-x86_64.json
vagrant box remove OEL7_1 || true
vagrant box add OEL7_1 build/OEL7_1.box
