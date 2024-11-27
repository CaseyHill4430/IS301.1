SOLUTION_SCRIPT=grep_search_name.sh
SAMPLE_INPUT=people_data.txt
README=README.md
DEPLOY_ZIP=grep_search_name_solution.zip
GIT_REPO_PATH=https://github.com/CaseyHill4430/IS301.1.git

help:
	@echo "Casey Hill"
	@echo "To build the deployment package: make build"
	@echo "To deploy the package: make deploy"

build: $(SOLUTION_SCRIPT) $(SAMPLE_INPUT) $(README)
	@echo "Building deployment package..."
	zip $(DEPLOY_ZIP) $(SOLUTION_SCRIPT) $(SAMPLE_INPUT) $(README)
	@echo "Package $(DEPLOY_ZIP) created successfully."

deploy: build
	@echo "Deploying package to repository..."
	git add $(DEPLOY_ZIP)
	@if git diff-index --quiet HEAD --; then \
		echo "Nothing to commit. Working tree clean."; \
	else \
		git commit -m "Deploy solution package $(DEPLOY_ZIP)"; \
		git push; \
	fi
	@echo "Package deployed to repository."

$(README):
	@echo "# Grep Search Name Solution" > $(README)
	@echo "## Description" >> $(README)
	@echo "This solution uses a bash script to search for lines matching a specified name pattern." >> $(README)
	@echo "## How to Use" >> $(README)
	@echo "Run the script with the name to search as an argument, providing input via stdin:" >> $(README)
	@echo "./grep_search_name.sh [name] < input_file" >> $(README)
	@echo "## Example" >> $(README)
	@echo "./grep_search_name.sh Lizzy < people_data.txt" >> $(README)
	@echo "## Author" >> $(README)
	@echo "Casey Hill | 11/16/2024" >> $(README)

.PHONY: help build deploy

