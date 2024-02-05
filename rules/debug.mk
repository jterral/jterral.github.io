# ******************************************************************
##@ Local Tools

.PHONY: print-env-vars
print-env-vars: ## Print environment variables
	@echo -e "$(BCYAN)Configuration Details:$(NORMAL)"
	@echo -e "To initialize environment > $(GREEN)source .envrc$(NORMAL)"
	@echo -e " $(YELLOW)FLUTTER_ROOT:$(NORMAL)\t" $(FLUTTER_ROOT)
	@echo -e " $(YELLOW)ENVIRONMENT:$(NORMAL)\t ${ENVIRONMENT}"
