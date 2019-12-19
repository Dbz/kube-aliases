BINARY_NAME=mk_kube_aliases
BINARY=../bin/$(BINARY_NAME)
GOCMD=go
SRC=$(wildcard src/*.go)

build:
	CGO_ENABLED=0 $(GOCMD) build --installsuffix 'static' -o $(BINARY) $(SRC)

# .PHONY: test
# test:
# > $(GOCMD) test $(SRC)
