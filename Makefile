ENV := super-local-screen-recorder-web-app
RUN := conda run --no-capture-output -n $(ENV)
PORT ?= 8000

.PHONY: setup run

setup:
	conda env update -n $(ENV) -f environment.yml --prune

run:
	$(RUN) python -m http.server $(PORT)
