#!/bin/bash

# Read my NAS account data
~/.my-accounts

# Mount NAS
sudo mount -t cifs //192.168.0.134/Volume_1 ~/nas -o username=$NASUSER,password=$NASPASS

