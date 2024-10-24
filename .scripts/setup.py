#!/bin/python3

import os

HOME = os.environ['HOME']
ZPACMAN_PATH = f'{HOME}/.zpacman'

ZSHRC_SRC_PATH = f'{ZPACMAN_PATH}/config/zshrc-example'
ZSHRC_DST_PATH = f'{HOME}/.zshrc'

PLUGINS_SRC_PATH = f'{ZPACMAN_PATH}/config/plugins-example.zsh'
PLUGINS_DST_PATH = f'{ZPACMAN_PATH}/config/plugins.zsh'

P10K_SRC_PATH = f'{ZPACMAN_PATH}/config/p10k-example.zsh'
P10K_DST_PATH = f'{HOME}/.p10k.zsh'

GREEN = '\033[92m'
BLUE = '\033[94m'
RESET = '\033[0m'

def backup() -> None:
    if os.path.exists(ZSHRC_DST_PATH):
        print(f'{GREEN}Backing up {ZSHRC_DST_PATH} to {ZSHRC_DST_PATH}.bak{RESET}')
        os.system(f'mv {ZSHRC_DST_PATH} {ZSHRC_DST_PATH}.bak')
    if os.path.exists(PLUGINS_DST_PATH):
        print(f'{GREEN}Backing up {PLUGINS_DST_PATH} to {PLUGINS_DST_PATH}.bak{RESET}')
        os.system(f'mv {PLUGINS_DST_PATH} {PLUGINS_DST_PATH}.bak')
    if os.path.exists(P10K_DST_PATH):
        print(f'{GREEN}Backing up {P10K_DST_PATH} to {P10K_DST_PATH}.bak{RESET}')
        os.system(f'mv {P10K_DST_PATH} {P10K_DST_PATH}.bak')

def gen_config() -> None:
    print(f'{GREEN}Generating...{RESET}')
    print(f'{BLUE}Generating {ZSHRC_DST_PATH}{RESET}')
    os.system(f'cp {ZSHRC_SRC_PATH} {ZSHRC_DST_PATH}')
    print(f'{BLUE}Generating {PLUGINS_DST_PATH}{RESET}')
    os.system(f'cp {PLUGINS_SRC_PATH} {PLUGINS_DST_PATH}')
    print(f'{BLUE}Generating {P10K_DST_PATH}{RESET}')
    os.system(f'cp {P10K_SRC_PATH} {P10K_DST_PATH}')

def main():
    backup()
    gen_config()

if __name__ == '__main__':
	main()
