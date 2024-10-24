.PHONY : all

PYTHON = python3
ZPACMAN = $(HOME)/.zpacman/bin/zpacman

all:
	@$(PYTHON) .scripts/setup.py
	@$(ZPACMAN) reload