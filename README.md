# Homebrew Tap for zsh-config

Homebrew formulae for [vish288/zsh-config](https://github.com/vish288/zsh-config).

## Installation

```bash
# Add the tap
brew tap vish288/zsh-config

# Install zsh-config
brew install zsh-config

# Run the installer
cd $(brew --prefix)/share/zsh-config && ./install.zsh
```

## One-liner

```bash
brew install vish288/zsh-config/zsh-config && cd $(brew --prefix)/share/zsh-config && ./install.zsh
```

## What's Included

The formula installs:
- ZSH configuration files to `$(brew --prefix)/share/zsh-config`
- Dependencies: zsh, mise, fzf, zoxide

The installer (`install.zsh`) will:
- Back up existing configuration
- Install Oh My Zsh and Powerlevel10k
- Create symlinks for `.zshrc`, `.zprofile`, `.p10k.zsh`
- Set up 1Password CLI integration (optional)

## Updating

```bash
brew upgrade zsh-config
cd $(brew --prefix)/share/zsh-config && ./update.zsh
```

## Uninstalling

```bash
cd $(brew --prefix)/share/zsh-config && ./uninstall.zsh
brew uninstall zsh-config
brew untap vish288/zsh-config
```

## Manual Installation

If you prefer not to use Homebrew:

```bash
git clone https://github.com/vish288/zsh-config.git ~/.config/zsh
cd ~/.config/zsh && ./install.zsh
```

## Links

- [Main Repository](https://github.com/vish288/zsh-config)
- [Releases](https://github.com/vish288/zsh-config/releases)
- [Issues](https://github.com/vish288/zsh-config/issues)
