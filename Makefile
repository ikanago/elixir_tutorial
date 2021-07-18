IMAGE_NAME := elixir_workspace
START_FUNC := App.main()
WORKDIR := /workspace
DOCKER := docker
DOCKER_RUN_OPTS := -it --rm -v `pwd`:$(WORKDIR)

.PHONY: run
run:
	$(DOCKER) run $(DOCKER_RUN_OPTS) $(IMAGE_NAME) mix run -e "$(START_FUNC)"

.PHONY: iex
iex:
	$(DOCKER) run $(DOCKER_RUN_OPTS) $(IMAGE_NAME)

.PHONY: build
build:
	$(DOCKER) build -t $(IMAGE_NAME) .

.PHONY: fmt
fmt:
	mix format
