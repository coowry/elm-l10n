NPM := node_modules/.bin

default: build

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

.PHONY: default get-deps build pull push


# Not phony

node_modules:
	npm install
