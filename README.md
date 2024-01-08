# Welcome to danielalvesleandro profile! :cloud:

This repository allows you to easily config your ZSH prompt with Starship in any Ubuntu implementation (in WSL or not). Your prompt you look like this:

![image](https://github.com/danielalvesleandro/zsh_config/assets/26511681/93ff6d58-c2bb-47c9-8196-0b3604380e33)

- Requirements
  Any Ubuntu implementation

The script will:

  1) Install the requirements for the nerdfonts.sh script
  2) Install ZSH
  3) Install Oh-My-ZSH
  4) Install the following ZSH plugins:
  5) Install Nerd Fonts (to include any specific Nerd Fonts modify the script locally and run the config script again)
  6) Install and configure Starship from the template (for any modification you have to modify the ~/.config.starship.toml file)
  7) Config the ZSHRC file from the template
  8) Source the ZSHRC file to load the configuration

## Get started :rocket:
  1) Clone the repo locally
  2) cd zsh_config
  3) chmod +x zsh_config.sh
  4) ./zsh_config.sh
