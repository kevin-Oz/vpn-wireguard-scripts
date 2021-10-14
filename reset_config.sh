#!/bin/bash

cd /etc/wireguard
rm -rf ./clients
echo "1" > last_used_ip.var
cp -f wg0.conf.def wg0.conf
systemctl stop wg-quick@wg0
wg-quick down wg0

echo "[Reseted ok]"