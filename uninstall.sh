#!/usr/bin/env sh
set -e

if [ "$EUID" -ne 0 ]; then
    echo "This script must be run as root!"
    exit 1
fi

systemctl disable --now btsspsw
rm -f /usr/bin/btsspsw /etc/systemd/system/btsspsw.service
systemctl daemon-reload
