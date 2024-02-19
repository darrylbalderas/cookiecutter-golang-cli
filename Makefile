VERSION := 0.0.1
APP_NAME := cli
IMAGE_NAME := ${APP_NAME}:${VERSION}

test:
	go test -v ./...

lint:
	staticcheck -f stylish ./...
	golangci-lint run ./...

init:
	cobra-cli init

build:
	@docker build -t ${IMAGE_NAME} .
run:
	@docker run ${IMAGE_NAME}