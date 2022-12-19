define HEADER
        __               _             __  __
       / /_  __  __     (_)___  ____  / /_/ /
      / __ \/ / / /    / / __ \/ __ \/ __/ /
     / /_/ / /_/ /    / / /_/ / /_/ / /_/ /
    /_.___/\__, /  __/ /\____/\____/\__/_/
          /____/  /___/

endef
export HEADER

# Tools
YARN ?= "$(shell which yarn)"


.DEFAULT_GOAL:=help

# ******************************************************************
##@ Helpers

.PHONY: help
help:  ## Display this help
	clear
	@echo "$$HEADER"
	@awk 'BEGIN {FS = ":.*##"; printf "Usage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

# ******************************************************************
##@ Yarn commands

.PHONY: yarn-install
yarn-install:  ## Yarn install command
	@echo "==> Yarn install"
	$(YARN) install

.PHONY: yarn-outdated
yarn-outdated:  ## Yarn outdated command
	@echo "==> Yarn outdated"
	$(YARN) outdated

.PHONY: yarn-test
yarn-test:  ## Yarn test command
	@echo "==> Yarn test"
	$(YARN) test

.PHONY: yarn-start
yarn-start:  ## Yarn start command
	@echo "==> Yarn start"
	$(YARN) start

.PHONY: yarn-upgrade-all
yarn-upgrade-all:  ## Yarn upgrade all packages command
	@echo "==> Yarn upgrade all packages"
	$(YARN) add \
		@emotion/react@latest \
		@emotion/styled@latest \
		@fontsource/roboto@latest \
		@mui/icons-material@latest \
		@mui/material@latest \
		@mui/styles@latest \
		react-router-dom@latest \
		typescript@latest \
		web-vitals@latest

	@echo "==> Yarn upgrade all dev packages"
	$(YARN) add --dev \
		@types/react@latest \
		@types/react-dom@latest \
		@types/jest@latest \
		@types/node@latest \
		eslint@latest \
		prettier@latest
