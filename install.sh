#!/usr/bin/env sh
set -e

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root!"
    exit 1
fi

install -v -Dm755 btsspsw /usr/bin/btsspsw
install -v -Dm644 btsspsw.service /etc/systemd/system/btsspsw.service
systemctl daemon-reload
if systemctl is-active --quiet btsspsw
    then systemctl restart btsspsw -v
    else systemctl enable --now btsspsw -v
fi
