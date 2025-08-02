#! /bin/bash

if systemd-detect-virt -q; then
  echo "Running in a virtualized environment. Skipping qemu and libvirt"
else
  yay -S --noconfirm --needed libvirt qemu-desktop dnsmasq virt-manager

  sudo usermod -aG libvirt ${USER}
  sudo systemctl enable libvirtd.service
  sudo systemctl start libvirtd.service
  sudo virsh net-define /etc/libvirt/qemu/networks/default.xml
  sudo virsh net-autostart default
fi
