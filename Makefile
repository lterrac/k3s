TARGETS := $(shell ls scripts | grep -v \\.sh)
BUILD_SETTINGS = GOOS=linux GOARCH=amd64

.dapper:
	@echo Downloading dapper
	@curl -sL https://releases.rancher.com/dapper/v0.5.1/dapper-$$(uname -s)-$$(uname -m) > .dapper.tmp
	@@chmod +x .dapper.tmp
	@./.dapper.tmp -v
	@mv .dapper.tmp .dapper

$(TARGETS): .dapper
	@echo Building $(TARGETS)
	./.dapper $@

.PHONY: deps
deps:
	@echo Building deps
	go mod vendor
	go mod tidy

release:
	@echo Building release
	./scripts/release.sh

.DEFAULT_GOAL := ci

.PHONY: $(TARGETS)

.PHONY: generate
generate: build/data 
	@echo Building generate
	./scripts/download
	go generate

build/data:
	@echo Building data
	mkdir -p $@

.PHONY: binary-size-check
binary-size-check:
	@echo Building binary
	scripts/binary_size_check.sh

.PHONY: image-scan
image-scan:
	@echo Building image scan
	scripts/image_scan.sh $(IMAGE)

binary:
	$(BUILD_SETTINGS) go build -trimpath -o server ./cmd/server/main.go
	$(BUILD_SETTINGS) go build -trimpath -o agent ./cmd/agent/main.go
	mv server ./custom-bin/server
	mv agent ./custom-bin/agent
