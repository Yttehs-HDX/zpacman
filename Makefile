.PHONY : all

PYTHON = python3

ZPACMAN_PATH = $(HOME)/.zpacman
ZSHRC_SRC = $(ZPACMAN_PATH)/config/zshrc
ZSHRC_DST = $(HOME)/.zshrc

all:
	@$(PYTHON) .scripts/backup.py
	@ln -sf $(ZSHRC_SRC) $(ZSHRC_DST)