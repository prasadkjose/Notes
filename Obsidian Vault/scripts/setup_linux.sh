#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting Linux setup script..."

# --- Update package lists ---
echo "Updating package lists..."
sudo apt update

# --- Install Brave Browser ---
echo "Installing Brave Browser..."
# Add Brave repository
sudo apt install curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
# Install Brave
sudo apt install brave-browser -y

echo "Please manually download and install Obsidian from the official website (https://obsidian.md/download) or use your preferred package manager."

# --- Install earlyoom ---
echo "Installing earlyoom..."
sudo apt install earlyoom -y

# --- Install tlp ---
echo "Installing tlp..."
sudo apt install tlp tlp-rdw -y
sudo systemctl enable tlp
sudo systemctl start tlp

# --- Install ACPI and other power tools
sudo apt install acpid acpi powertop upower lm-sensors -y
sudo systemctl enable acpid
sudo systemctl start acpid

echo "Setup script finished!"
echo "Please remember to manually install Obsidian if you haven't already."
