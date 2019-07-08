include ../make/docker.mk
include ../make/help.mk
include ../make/shell.mk

IMAGE_NAME=phpcs-ga

.PHONY: clean
clean: ## Clean up after the build process.

.PHONY: lint
lint: shell-lint docker-lint ## Lint all of the files for this Action.

.PHONY: build
build: docker-build ## Build this Action.

.PHONY: test
test:

.PHONY: publish
publish: docker-publish ## Publish this Action.
