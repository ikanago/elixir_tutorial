START_FUNC = App.hello()

.PHONY: run
run:
	mix run -e "$(START_FUNC)"

.PHONY: fmt
fmt:
	mix format