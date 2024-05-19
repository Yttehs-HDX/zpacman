# ZPacman

A simple, small omz plugin manager

Including my own zsh config ( `.zshrc` )

# Installation

### If you are using ArchLinux: Refer to branch [`archlinux`](../archlinux)

Please install `zsh` `curl` first.

```bash
git clone https://github.com/Yttehs-HDX/zpacman.git --depth=1 ~/.zpacman
cd ~/.zpacman
./setup.sh
```

# Function

Please refer to **zpacman help**

```bash
$ zpacman help
Usage: zpacman install <name> [url]
       zpacman install <url>
       zpacman uninstall <name>
       zpacman list
       zpacman reload
```

# Warning

The following commands are no longer working:

```bash
omz plugin enable <plugin_name>
omz plugin disable <plugin_name>
```
