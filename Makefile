NPM := node_modules/.bin

default: build

deps: node_modules
	# There are no third-party dependencies yet, skipped

build: node_modules
	$(NPM)/elm-make


.PHONY: default get-deps build


# Not phony

node_modules:
	npm install
