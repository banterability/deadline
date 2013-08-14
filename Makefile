COFFEE=./node_modules/coffee-script/bin/coffee

build:
	$(COFFEE) -co lib src/deadline.coffee

.PHONY: build
