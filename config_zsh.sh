#! /bin/bash

# Install ZSH
sudo apt install zsh -y

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install autoupdate plugin
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting.zsh plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git; echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# Install zsh-history-substring-search plugin
brew install zsh-history-substring-search
echo 'source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh' >> ~/.zshrc

# Install zsh-completions plugin
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# Install Nerd Fonts
curl -sS https://raw.githubusercontent.com/danielalvesleandro/zsh_config/master/nerdfonts.sh | sh

# Install Starship
curl -sS https://starship.rs/install.sh | sh

# Create Starship config file from template
mkdir ~/.config/
wget https://raw.githubusercontent.com/danielalvesleandro/zsh_config/master/starship.toml -P ~/.config/

# Replace the .zshrc file content with template
wget https://raw.githubusercontent.com/danielalvesleandro/zsh_config/master/.zshrc -P ~/

# Source .zshrc file
source ~/.zshrc
