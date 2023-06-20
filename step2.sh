# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
echo "Lazygit installed"

# Install clipboard
sudo apt install xclip
echo "Installed xclip as clipboard"

# Install kitty terminal
sudo apt install kitty -y
echo "Installing kitty terminal"

# Symlink kitty configs
ln -s ~/dotfiles/kitty/ ~/.config/
echo "Linking kitty configs"

# Make kitty the default terminal
sudo update-alternatives --config x-terminal-emulator
echo "Setting kitty as default terminal"
