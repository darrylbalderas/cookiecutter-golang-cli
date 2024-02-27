IMAGE_NAME := {{ cookiecutter.project_slug }}:{{ cookiecutter.version }}

test:
	go test -v ./...

lint:
	go fmt ./...
	staticcheck -f stylish ./...
	golangci-lint run ./...

init:
	cobra-cli init
build:
	@docker build -t ${IMAGE_NAME} .
run:
	@docker run ${IMAGE_NAME}
