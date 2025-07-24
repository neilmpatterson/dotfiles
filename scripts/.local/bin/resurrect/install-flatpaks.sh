#!/bin/bash

FLATPAKS=(
  "com.google.Chrome"
  "com.ticktick.TickTick"
  "md.obsidian.Obsidian"
  "org.gnome.Extensions"
  "us.zoom.Zoom"
)

for pak in "${FLATPAKS[@]}"; do
  if ! flatpak list --app --columns=application | grep -q "^$pak$"; then
    echo "Installing Flatpak: $pak"
    flatpak install --noninteractive flathub "$pak"
  else
    echo "Flatpak already installed: $pak"
  fi
done
