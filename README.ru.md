# btsspsw
Bluetooth Secure Simple Pairing (SSP) Switcher

## Описание
btsspsw - это сервис для автоматического переключения режима Secure Simple Pairing (SSP) в Bluetooth в зависимости от состояния обнаружения устройств. Когда обнаружение включено, SSP включается для обеспечения безопасного сопряжения новых устройств. Когда обнаружение выключено, SSP отключается.

Этот переключатель необходим для решения проблемы с автоматическим подключением некоторых Bluetooth устройств, например китайских геймпадов (реплик DualShock 4 и т.д.), которые могут иметь проблемы с автоматическим переподключением при включенном SSP.

## Зависимости
- bluez
- bluez-utils

## Установка

### Ручная установка
1. Скопируйте исполняемый файл в системный каталог:
   ```bash
   sudo install -Dm755 btsspsw /usr/bin/btsspsw
   ```

2. Скопируйте файл сервиса systemd:
   ```bash
   sudo install -Dm644 btsspsw.service /etc/systemd/system/btsspsw.service
   ```

3. Перезагрузите конфигурацию systemd и включите сервис:
   ```bash
   sudo systemctl daemon-reload
   sudo systemctl enable --now btsspsw
   ```

### Использование скрипта установки
```bash
sudo ./install.sh
```

## Удаление

### Ручное удаление
1. Остановите и отключите сервис:
   ```bash
   sudo systemctl disable --now btsspsw
   ```

2. Удалите файлы:
   ```bash
   sudo rm -f /usr/bin/btsspsw /etc/systemd/system/btsspsw.service
   ```

3. Перезагрузите конфигурацию systemd:
   ```bash
   sudo systemctl daemon-reload
   ```

### Использование скрипта удаления
```bash
sudo ./uninstall.sh