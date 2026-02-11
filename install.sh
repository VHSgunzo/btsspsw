#!/usr/bin/env sh
set -e

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root!"
    exit 1
fi

install -Dm755 btsspsw /usr/bin/btsspsw
install -Dm644 btsspsw.service /etc/systemd/system/btsspsw.service
systemctl daemon-reload
systemctl enable --now btsspsw
