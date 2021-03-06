NPM := node_modules/.bin

default: test

deps: node_modules
	# There are no third-party dependencies yet, skipped

build: node_modules
	$(NPM)/elm-make

# Why the custom PATH? https://github.com/elm-lang/elm-platform/issues/47
repl: node_modules
	@PATH=$(NPM):$(PATH) $(NPM)/elm-repl

pull:
	git fetch --prune
	git checkout master && git merge origin/master
	git checkout develop && git merge origin/develop

push: pull
	git push --follow-tags origin master develop

test: build
	$(NPM)/elm-test

.PHONY: default deps build pull push test


# Not phony

node_modules:
	npm install
