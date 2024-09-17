### eVim

**eVim** is a customized Neovim configuration designed to enhance your coding experience with essential plugins, keybindings, and themes. This repository allows you to quickly set up Neovim on any machine by cloning the configuration and installing the necessary plugins.

---

## 📚 Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
  - [1. Clone the Repository](#1-clone-the-repository)
  - [2. Install Packer.nvim](#2-install-packernvim)
  - [3. Install Plugins](#3-install-plugins)
- [Usage](#usage)
- [Customization](#customization)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

---

## ✨ Features

- **Plugin Manager:** [packer.nvim](https://github.com/wbthomason/packer.nvim)
- **File Explorer:** [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- **Status Line:** [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- **Syntax Highlighting:** [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- **Autocompletion:** [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- **Git Integration:** [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- **Fuzzy Finder:** [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- **Icons Support:** [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

---

## 🔧 Prerequisites

Before setting up **eVim**, ensure you have the following installed on your system:

- **Neovim 0.5 or higher:** [Installation Guide](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- **Git:** [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- **A Terminal Emulator:** Such as GNOME Terminal, Konsole, or others.

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

**eVim** uses [packer.nvim](https://github.com/wbthomason/packer.nvim) as the plugin manager. If you don't have `packer.nvim` installed, install it using the following command:

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3. Install Plugins

After cloning the repository and installing `packer.nvim`, open Neovim to install the necessary plugins:

```bash
nvim
```

Once Neovim is open, run the following command to install all plugins:

```vim
:PackerSync
```

This command will download and set up all the plugins specified in the configuration.

---

## 🖥 Usage

After installation, you can start using Neovim with your new configuration.

### 🔑 Keybindings

- **Toggle File Explorer:** `<Ctrl> + e, e` or `<Ctrl> + e`
- **Navigate Between Windows:** `<Ctrl> + Arrow Keys`
- **Trigger Autocompletion:** `<Ctrl> + Space`
- **Open Fuzzy Finder:**
  - **Find Files:** `<leader>ff`
  - **Live Grep:** `<leader>fg`
  - **Buffers:** `<leader>fb`
  - **Help Tags:** `<leader>fh`

### 📂 File Explorer (nvim-tree.lua)

- **Open/Close Explorer:** `<Ctrl> + e`
- **Navigate Files:**
  - **Up/Down:** `k` / `j`
  - **Open Folder:** `l`
  - **Close Folder:** `h`
- **Open File:** `Enter`
- **Create File/Folder:** `a` / `A`
- **Rename/Delete:** `r` / `d`

---

## 🎨 Customization

You can customize your Neovim setup by modifying the configuration files located in the `lua/plugins/` directory. Each plugin has its own Lua configuration file. For example:

- **Colorscheme:** `lua/plugins/colorscheme.lua`
- **Autocompletion:** `lua/plugins/cmp.lua`
- **LSP Configuration:** `lua/plugins/lsp.lua`

Feel free to tweak these files to suit your preferences or add new plugins as needed.

---

## 🐞 Troubleshooting

If you encounter any issues during setup or usage, consider the following steps:

1. **Ensure Dependencies Are Installed:**
   - Verify that Neovim, Git, and `packer.nvim` are correctly installed.

2. **Run PackerSync Again:**
   - Open Neovim and execute `:PackerSync` to reinstall plugins.

3. **Check Git Status:**
   - Navigate to `~/.config/nvim` and run:
     ```bash
     git status
     ```
   - Ensure there are no merge conflicts or uncommitted changes.

4. **Review Configuration Files:**
   - Look for syntax errors or misconfigurations in your `init.lua` or plugin-specific Lua files.

5. **Consult Plugin Documentation:**
   - Refer to the documentation of the respective plugins for specific issues.

---

## 🤝 Contributing

Contributions are welcome! If you have suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

### 📝 How to Contribute

1. **Fork the Repository:**

   Click on the "Fork" button at the top-right corner of this page.

2. **Clone Your Fork:**

   ```bash
   git clone https://github.com/yourusername/EvimConf.git ~/.config/nvim
   ```

3. **Create a New Branch:**

   ```bash
   git checkout -b feature/your-feature-name
   ```

4. **Make Your Changes:**

   Edit the configuration files as needed.

5. **Commit Your Changes:**

   ```bash
   git commit -m "Add your commit message here"
   ```

6. **Push to Your Fork:**

   ```bash
   git push origin feature/your-feature-name
   ```

7. **Submit a Pull Request:**

   Go to your forked repository on GitHub and click "New pull request".

---

## 📜 License

This project is licensed under the ErfanOS License.
