### eVim

**eVim** is a customized Neovim configuration designed to enhance your coding experience with essential plugins, keybindings, and themes. This repository allows you to quickly set up Neovim on any machine by cloning the configuration and installing the necessary plugins.

---

## 📚 Table of Contents

- [Installation](#installation)
  - [1. Clone the Repository](#1-clone-the-repository)
  - [2. Install Packer.nvim](#2-install-packernvim)
  - [3. Install Plugins](#3-install-plugins)
- [Usage](#-usage)
- [License](-#license)

---

## 🚀 Installation

Follow these steps to clone the repository and set up your Neovim configuration.

### 1. Clone the Repository

Open your terminal and run the following command to clone the **eVim** repository to your Neovim configuration directory:

```bash
git clone https://github.com/erfankeyhani-1/EvimConf.git ~/.config/nvim
```

> **Note:** This command will overwrite your existing Neovim configuration. If you have important configurations, consider backing them up before proceeding.

### 2. Install Packer.nvim

**eVim** uses [packer.nvim](https://github.com/wbthomason/packer.nvim) as the plugin manager. If you don't have `packer.nvim` installed, run the following command:

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3. Install Plugins

After cloning the repository and installing `packer.nvim`, open Neovim to install the necessary plugins:

```bash
nvim
```

Once Neovim is open, execute the following command to install all plugins:

```vim
:PackerSync
```

This command will download and set up all the plugins specified in the configuration.

---

### 🖥 Usage

After installation, simply open Neovim, and your customized configuration will be active. You can start coding with enhanced features and plugins already set up.

### 🔑 Keybindings

- **Toggle File Explorer:** `<Ctrl> + e`
- **Navigate Between Windows:** `<Ctrl> + W + ArrowKeys`
- **Trigger Autocompletion:** `<Ctrl> + Space`
- **Open Fuzzy Finder:**
  - **Find Files:** `<leader>ff`
  - **Live Grep:** `<leader>fg`
  - **Buffers:** `<leader>fb`
  - **Help Tags:** `<leader>fh`

---

### 📜 License

This project is licensed under the [Erfan](LICENSE) License.

---

**Happy Coding!** 🚀💻
