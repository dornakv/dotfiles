# dotfiles
My personal dotfiles

## TOC
- [ubuntu/debian setup](#ubuntu-debian-setup)
- [Font](#font)
  * [WSL2 and Windows Terminal](#wsl2-and-windows-terminal)

## ubuntu/debian setup

1. Update, upgrade and clean apt:
```sh
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y
```

2. Install required packages:
```sh
sudo apt install git zsh neovim curl -y
```

3. Put ssh key into ~/.ssh/ and start ssh agent:
```sh
eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519
```

4. Clone dotfiles:
```sh
git clone git@github.com:dornakv/dotfiles.git
```

5. Install dotfiles:
```sh
./dotfiles/install/basic_install
```

6. Install vim plugins:
```sh
vim +PlugInstall +qall
```

## macOS specifics
### ZSH
The order in which zsh config files are loaded:
(from [Zsh/Bash startup files loading order (.bashrc, .zshrc etc.)](https://medium.com/@rajsek/zsh-bash-startup-files-loading-order-bashrc-zshrc-etc-e30045652f2e)
|                |Interactive login|Interactive non-login|Script|
|----------------|-----------|-----------|------|
|/etc/zshenv     |    A      |    A      |  A   |
|~/.zshenv       |    B      |    B      |  B   |
|/etc/zprofile   |    C      |           |      |
|~/.zprofile     |    D      |           |      |
|/etc/zshrc      |    E      |    C      |      |
|~/.zshrc        |    F      |    D      |      |
|/etc/zlogin     |    G      |           |      |
|~/.zlogin       |    H      |           |      |
|                |           |           |      |
|~/.zlogout      |    I      |           |      |
|/etc/zlogout    |    J      |           |      |

## Font

### WSL2 and Windows Terminal
Add to settings.json to the distribution setting:
```sh
"fontFace": "MesloLGS NF"
```
