# My Vim Configuration

This repository contains my Vim configuration, organized in a `.vim` folder. Follow the instructions below to set up the configuration on your machine.

## Installation

1. Clone this repository to your home directory:


2. Create a symbolic link from the new location to your home directory:


    ```bash
    ln -s ~/.vim/.vimrc ~/.vimrc
    ```

3. Install Vim-Plug package manager. Visit [Vim-Plug GitHub](https://github.com/junegunn/vim-plug) for more details.


    ```bash
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

4. Open Vim and run `:PlugInstall` to install the plugins specified in your `.vimrc`.
