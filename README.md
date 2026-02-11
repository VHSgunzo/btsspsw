# btsspsw
Bluetooth Secure Simple Pairing (SSP) Switcher

## Description
btsspsw is a service that automatically switches the Bluetooth Secure Simple Pairing (SSP) mode based on the device discovery state. When discovery is enabled, SSP is turned on to ensure secure pairing of new devices. When discovery is disabled, SSP is turned off.

This switcher is needed to solve connection issues with certain Bluetooth devices, particularly Chinese gamepads (DualShock 4 replicas, etc.) that may have problems with automatic reconnection when SSP is enabled.

## Dependencies
- bluez
- bluez-utils

## Installation

### Manual installation
1. Copy the executable file to the system directory:
   ```bash
   sudo install -Dm755 btsspsw /usr/bin/btsspsw
   ```

2. Copy the systemd service file:
   ```bash
   sudo install -Dm644 btsspsw.service /etc/systemd/system/btsspsw.service
   ```

3. Reload systemd configuration and enable the service:
   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable --now btsspsw
   ```

### Using the installation script
```bash
sudo ./install.sh
```

## Removal

### Manual removal
1. Stop and disable the service:
   ```bash
   sudo systemctl disable --now btsspsw
   ```

2. Remove the files:
   ```bash
   sudo rm -f /usr/bin/btsspsw /etc/systemd/system/btsspsw.service
   ```

3. Reload systemd configuration:
   ```bash
   sudo systemctl daemon-reload
   ```

### Using the uninstall script
```bash
sudo ./uninstall.sh
