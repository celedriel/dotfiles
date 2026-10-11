#!/bin/bash
echo "A aplicar ajustes de sistema (USB power fix)..."
sudo cp usr/local/bin/usb-power-fix.sh /usr/local/bin/
sudo cp etc/systemd/system/usb-power-fix.service /etc/systemd/system/
sudo chmod +x /usr/local/bin/usb-power-fix.sh
sudo systemctl daemon-reload
sudo systemctl enable --now usb-power-fix.service
echo "Ajustes de sistema aplicados com sucesso!"
