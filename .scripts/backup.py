#!/bin/python3

import os

HOME = os.environ['HOME']

ZPACMAN_PATH = f'{HOME}/.zpacman'
ZSHRC_SRC_PATH = f'{ZPACMAN_PATH}/config/zshrc'
ZSHRC_DST_PATH = f'{HOME}/.zshrc'

def main():
    if os.path.islink(ZSHRC_DST_PATH):
        return

    if os.path.exists(ZSHRC_DST_PATH):
        print(f'Backing up {ZSHRC_DST_PATH} to {ZSHRC_DST_PATH}.bak')
        os.system(f'mv {ZSHRC_DST_PATH} {ZSHRC_DST_PATH}.bak')
        
if __name__ == '__main__':
	main()