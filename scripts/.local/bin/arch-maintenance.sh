#!/usr/bin/env bash

# Arch Linux System Maintenance Script

set -euo pipefail

echo "🔧 Checking failed systemd services..."
systemctl --failed || true

echo "🧾 Showing recent critical log messages..."
sudo journalctl -p 3 -xb || true

echo "⬆️ Updating system with pacman..."
sudo pacman -Syu

echo "⬆️ Updating AUR packages with yay..."
yay -Syu

echo "🧹 Cleaning pacman cache..."
sudo pacman -Scc --noconfirm

echo "🧹 Cleaning yay cache..."
yay -Scc --noconfirm

echo "🧼 Removing unneeded dependencies from yay..."
yay -Yc --noconfirm

echo "📦 Looking for orphaned packages..."
orphans=$(pacman -Qtdq || true)

if [[ -n "$orphans" ]]; then
  echo "🗑️ Removing orphaned packages..."
  sudo pacman -Rns $orphans
else
  echo "✅ No orphaned packages found."
fi

echo "🧼 Checking ~/.cache size:"
du -sh ~/.cache

read -p "❓ Delete all contents of ~/.cache? (y/N): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rm -rf ~/.cache/*
  echo "✅ ~/.cache cleared."
else
  echo "⚠️ Skipped ~/.cache cleanup."
fi

echo "🧼 Checking journal size:"
sudo du -sh /var/log/journal

read -p "❓ Vacuum journal logs older than 2 weeks? (y/N): " -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
  sudo journalctl --vacuum-time=2weeks
  echo "✅ Journal cleaned."
else
  echo "⚠️ Skipped journal cleanup."
fi

echo "✅ Maintenance complete!"

