# Go parameters
GOBUILD=go build
GOCLEAN=go clean
BINARY_NAME=bj

export GO111MODULE=on

all: build

clean:
	$(GOCLEAN)

build: clean
	$(GOBUILD) -o $(BINARY_NAME)

install: build
	cp -f $(BINARY_NAME) $(GOBIN)/
