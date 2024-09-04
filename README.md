# ZPacman for ArchLinux

A simple, small omz plugin manager

Including my own zsh config ( `.zshrc` )

## Installation

Please install `zsh` `curl` `zsh-theme-powerlevel10k-git`( AUR ) first.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSL https://github.com/Yttehs-HDX/zpacman/raw/archlinux/install.sh | bash
```

## Function

Please refer to **zpacman help**

```bash
$ zpacman help
Usage: zpacman install <name> [url]
       zpacman install <url>
       zpacman uninstall <name>
       zpacman list
       zpacman reload
```

## Warning

The following commands are no longer working:

```bash
omz plugin enable <plugin_name>
omz plugin disable <plugin_name>
```

## License

MIT
