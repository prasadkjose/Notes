# My Linux Setup Guide

This guide outlines the steps I took to set up my current Linux environment.

---

## 1. Operating System Installation

### 1.1. Distribution Choice

*   **Distribution:** Kubuntu
*   **Reasoning:** It's a really good UI and customizable themes. 

### 1.2. Installation Process

1.  **Download ISO:** Download the latest stable Kubuntu ISO from the official website.
2.  **Create Bootable USB:** Use a tool like [Rufus](https://rufus.ie/) or [Etcher](https://etcher.balena.io/) to create a bootable USB drive.
3.  **Boot from USB:** Restart your computer on BIOS/UEFI and boot from the USB drive.

---

## 2. Post-Installation Configuration

### 2.1 Essential Software Installation


```
chmod +x setup_linux.sh
sudo ./setup_linux.sh
```


### 2.3. Customization

*   **Theme:** [Describe your chosen theme, e.g., "Installed the 'Breeze' global theme and customized colors."]
*   **Icons:** [Mention your icon theme, e.g., "Using the 'Papirus' icon theme."]
*   **Desktop Layout:** [Explain any changes to the desktop layout, e.g., "Moved the taskbar to the bottom and added widgets."]

---

## 3. Development Environment Setup

### 3.1. Version Control

*   **Install Git:**
    ```bash
    sudo apt install git -y
    ```
*   **Configure Git:**
    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "your.email@example.com"
    ```

### 3.2. Programming Languages

*   **Python:**
    *   **Install:** `sudo apt install python3 python3-pip -y`
    *   **Verify:** `python3 --version` and `pip3 --version`
*   **Node.js:**
    *   **Install using NVM (Node Version Manager):**
        ```bash
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
        source ~/.bashrc # or ~/.zshrc if you use Zsh
        nvm install --lts
        ```
    *   **Verify:** `node -v` and `npm -v`

### 3.3. Docker

*   **Install Docker:** Follow the official Docker installation guide for Ubuntu.
    *   [Link to Docker Ubuntu Installation Guide](https://docs.docker.com/engine/install/ubuntu/)
*   **Add user to docker group:**
    ```bash
    sudo usermod -aG docker $USER
    newgrp docker # Apply group changes without logging out
    ```

---

## 4. Additional Tools and Tweaks

### 4.1. Terminal Enhancements

*   **Shell:** [e.g., Zsh with Oh My Zsh]
    *   **Install Zsh:** `sudo apt install zsh -y`
    *   **Install Oh My Zsh:** `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
    *   **Theme:** [e.g., "Using the 'agnoster' theme."]
*   **Terminal Emulator:** [e.g., Konsole, Alacritty]
    *   **Configuration:** [Mention any specific configurations or settings.]

### 4.2. System Monitoring

*   **Install:** `sudo apt install htop glances -y`

### 4.3. Keyboard Shortcuts

*   [List any custom keyboard shortcuts you've set up.]

---

## Visual Elements

To make this visually appealing, consider adding:

*   **Screenshots:** Use `![Alt text](path/to/your/screenshot.png)` to embed screenshots of your desktop, specific applications, or terminal output.
*   **Code Blocks:** Use triple backticks (```) for code snippets and commands.
*   **Callouts:** Use Obsidian's callout feature for important notes or warnings. For example:
    > [!NOTE] Important
    > Remember to back up your data before making significant changes.
*   **Headings and Subheadings:** Use `#`, `##`, `###` to structure your content logically.
*   **Lists:** Use bullet points (`*` or `-`) and numbered lists (`1.`, `2.`) for clarity.
*   **Bold and Italics:** Use `**bold**` and `*italics*` for emphasis.

---

**Last Updated:** {{date}}