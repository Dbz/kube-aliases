BINARY_NAME=generate-kube-aliases
BINARY=./bin/$(BINARY_NAME)
GOCMD=go
SRC=$(wildcard ./*.go)

.PHONY: build
build:
	CGO_ENABLED=0 $(GOCMD) build --installsuffix 'static' -o $(BINARY) 

.PHONY: test
test:
	$(GOCMD) test ./pkg/...
