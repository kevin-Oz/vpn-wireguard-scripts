#!/bin/bash

wg-quick down wg0
systemctl stop wg-quick@wg0
systemctl disable wg-quick@wg0
yes | apt autoremove wireguard wireguard-dkms wireguard-tools
yes | apt update
rm -rf /etc/wireguard

echo "[Removed ok]"
