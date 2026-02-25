#!/usr/bin/env sh
set -e

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root!"
    exit 1
fi

systemctl disable --now btsspsw -v
rm -vf /usr/bin/btsspsw /etc/systemd/system/btsspsw.service
systemctl daemon-reload
