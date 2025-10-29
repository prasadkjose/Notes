#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting Linux setup script..."

# --- Update package lists ---
echo "Updating package lists..."
sudo apt update
sudo apt-get update

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
# --- If You encounter any power related issues, batter management, sleep or boot problems,
# --- remove the below packages. 

echo "Installing tlp..."
sudo apt install tlp tlp-rdw -y
sudo systemctl enable tlp
sudo systemctl start tlp

# --- Install ACPI and other power tools
sudo apt install acpid acpi powertop upower lm-sensors -y
sudo systemctl enable acpid
sudo systemctl start acpid


# --- Dev Setup ---
# --- Try to install codium using snap ---
if command -v snap &>/dev/null; then
    echo "Snap is available, installing codium using snap..."
    snap install codium --classic
    # Check if the snap command was successful
    if [ $? -ne 0 ]; then
        echo "Snap installation failed, falling back to apt..."
        sudo apt update && sudo apt install -y codium
    fi
else
    echo "Snap is not available, installing codium using apt..."
    sudo apt update && sudo apt install -y codium
fi
# --- Install docker ---
if command -v snap &>/dev/null; then
    echo "Snap is available, installing docker using snap..."
    sudo snap install docker 
    # Check if the snap command was successful
    if [ $? -ne 0 ]; then
        echo "Snap installation failed... Check Docker website https://docs.docker.com/engine/install/ubuntu/"
    else 
        sudo docker run hello-world
        echo "Check if docker is running as a system process" 
    fi
fi

echo "Setup script finished!"
echo "Please remember to manually install Obsidian if you haven't already."
