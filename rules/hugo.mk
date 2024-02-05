# Tools
WINGET ?= "$(shell which winget)"
HUGO ?= "$(shell which hugo)"


# ******************************************************************
##@ Hugo Tools

--check-hugo:
	@echo -e "$(BCYAN)Checking Hugo installation...$(NORMAL)"
	@if ! command -v $(HUGO) &> /dev/null; then \
		echo -e "$(RED)Hugo is not installed.$(NORMAL)"; \
		exit 1; \
	fi

.PHONY: hugo-install
hugo-install:  ## Install Hugo
	@echo -e "$(BCYAN)Installating Hugo...$(NORMAL)"
	@$(WINGET) install --source winget -e --id Hugo.Hugo.Extended

.PHONY: hugo-serve
hugo-serve: --check-hugo  ## Serve Hugo
	@echo -e "$(BCYAN)Serving Hugo...$(NORMAL)"
	@$(HUGO) server -D
