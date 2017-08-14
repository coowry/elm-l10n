NPM := node_modules/.bin

default: build

deps: node_modules
	# There are no third-party dependencies yet, skipped

build: node_modules
	$(NPM)/elm-make

# Why the custom PATH? https://github.com/elm-lang/elm-platform/issues/47
repl: node_modules
	@PATH=$(NPM):$(PATH) $(NPM)/elm-repl


.PHONY: default get-deps build


# Not phony

node_modules:
	npm install
