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
*Note: Check the packages int he setup script first* 

``` bash
chmod +x setup_linux.sh
sudo ./setup_linux.sh
```

1. Install Obisidian from their website
### 2.3. Customization

*   **Theme:** [Dream-dark-color-global-5]

---

## 3. Development Environment Setup

### 3.1. Version Control

```bash
git config --global user.name "prasad koshy jose"
git config --global user.email "prasadkjose@gmail.com"
```
---

## 4. Additional Tools and Tweaks

### 4.1. Terminal Enhancements


### 4.2. System Monitoring and Power essentials

*   Sleep is disabled everywhere since in Surface devices there are ACPI issues .
* Disable sleep
`sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target`

- Enable sleep again
`sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target`
### 4.3. Keyboard Shortcuts



