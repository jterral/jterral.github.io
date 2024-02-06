# Tools
PIP ?= "$(shell which pip)"
PRECOMMIT ?= "$(shell which pre-commit)"


# ******************************************************************
##@ Precommit Tools

.PHONY: precommit-install
precommit-install:  ## Install precommit
	@echo -e "$(BCYAN)Initializing pre-commit installation...$(NORMAL)"
	$(PIP) install pre-commit

.PHONY: precommit-configure
precommit-configure:  ## Configure precommit hooks
	@echo -e "$(BCYAN)Starting pre-commit configuration...$(NORMAL)"
	$(PRECOMMIT) install --install-hooks
	$(PRECOMMIT) install --hook-type commit-msg
	$(PRECOMMIT) install --hook-type pre-push

.PHONY: precommit-update
precommit-update:  ## Update precommit hooks
	@echo -e "$(BCYAN)Updating pre-commit hooks...$(NORMAL)"
	$(PRECOMMIT) autoupdate
