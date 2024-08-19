#!/bin/bash

URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Agave.zip"


sudo apt-get install -y npm ripgrep gdu
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
npm install tree-sitter-cli
wget -P ~/.fonts $URL && unzip ~/.fonts/$(basename $URL) -d ~/.fonts && rm ~/.fonts/$(basename $URL)

# Neovim
wget -P ~/ https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x ~/nvim.appimage
~/nvim.appimage --appimage-extract
mv squashfs-root/ ~/.nvim

ALIAS='alias nvim="$HOME/.nvim/usr/bin/nvim"'

# Check if the line already exists in .bashrc
if ! grep -Fxq "$ALIAS" ~/.bashrc; then
    # If the line does not exist, add it to the end of .bashrc
    echo "$ALIAS" >> ~/.bashrc
    echo "Alias added to .bashrc"
else
    echo "Alias already exists in .bashrc"
fi

# Lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit lazygit.tar.gz

# Bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.10.2/bottom_0.10.2-1_amd64.deb
sudo dpkg -i bottom_0.10.2-1_amd64.deb
rm bottom_0.10.2-1_amd64.deb

source ~/.bashrc
