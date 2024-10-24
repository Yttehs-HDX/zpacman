# ZPacman Example - Universal

A simple, small omz plugin manager

## Features

You need manually install pakages `autojump`, `eza`, and a [command-not-found handler](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found#supported-platforms).

- Plugins: [config/plugins-example.zsh](config/plugins-example.zsh)

- Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

## Installation

1. Install `zsh` `curl` first.

2. Install Oh My Zsh.

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. Install ZPacman.

```bash
git clone --depth 1 https://github.com/Yttehs-HDX/zpacman.git ~/.zpacman
cd ~/.zpacman
make
```

## Function

Refer to **zpacman help**

```bash
$ zpacman help
ZPacman - OMZ Plugin Manager by Yttehs-HDX@Github

Usage: zpacman install <name> [url]
       zpacman install <url>
       zpacman uninstall <name>
       zpacman info <name>
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
